#include <Arduino.h>
#include <avr/interrupt.h>
#include <SPI.h>
#include <LoRa.h>
#include <EEPROM.h>

// the plan: rework the board. make led attach to pin 9, attach D2 to the irq pin

// ####### TODO  #######//
// add IRQ pin-change interrupt function instead of polling the radio

#define csPin 10
#define resetPin A0
//#define irqPin 9 //This is not an ATMEGA external interrupt, and will probably be handled manually with a pulldown resistor and a pin-change interrupt

#define ledOne 3
#define ledTwo 2
#define button 4    //the on-board push switch, for debugging and setting local device address
#define relayOne A3
#define relayTwo A2
#define temp     A1  // TMP36 analog temperature sensor. This pin will also work with Dallas 1-Wire sensors
// These are the jumper pins for address selecting
#define jumpone   5
#define jumptwo   6
#define jumpthree 7
#define jumpfour  8

#define extOne A5      //pins for external switches. Switch press is digital pin LOW
#define extTwo A4

//int packetSize = 0;
int irqPin = 9;
int switchArray[4];
bool relayStates[2] = {0,0};  //holds the on/off status of both relays
//bool volatile readPacket = false; //flag to set in ISR if IRQ pin-change has triggered

byte localAddress = 0x14; //20    Will hardcode this for now, will determine from jumper/dip switches later
byte destAddress = 0x25; //37

///////////These are keyword arrays, to be parsed in from the radio and be acted on

void sayStatus(byte dest) //Function to update current relay status
{
      Serial.println("sending status.");
      LoRa.beginPacket();                   // start packet
      LoRa.write(dest);              // add destination address
      LoRa.write(localAddress);             // add sender address
      LoRa.write(1);                        // add message ID
      LoRa.write(5);//temporarily making oversized        // relayStates is a 2 index array
      LoRa.print("STAT");
      LoRa.print(relayStates[0]);
      LoRa.print(relayStates[1]); // send stat and then the states, to let the bridge receiver know this is a stat message right off the bat
      //Serial.println("STAT"+ (char)relayStates[0] + (char)relayStates[1]);
      LoRa.endPacket();
      LoRa.receive();
}

// void gotPacket() //pin change ISR to set flag that a packet read is required
// {
//   //detachInterrupt(irqPin);
//   readPacket = true;
// }

void Receive(int packetSize)
{
  if (packetSize == 0) return;
  Serial.println("recv");
  char statCall[4] = {'S','T','A','T'};

  int i = 0;
  int recipient = LoRa.read();
  byte sender = LoRa.read();
  byte incomingMsgId = LoRa.read();
  byte incomingLength = LoRa.read();
  //int testLength = incomingLength;
  //String incoming = ""; //initalize string for the incoming message
  char incomingArray[incomingLength];

  while (LoRa.available())
  {
    incomingArray[i] = (char)LoRa.read();
    i++;
  }
  if (recipient != localAddress)
  {
    Serial.print("Msg is for another station: ");
    Serial.println(recipient);
    return;
  }
  else if (recipient == localAddress)
  {
    if (incomingLength == 2) // assume two index arrays are the boolean values to set the relays to
    {
      Serial.println(String(incomingArray[0], DEC));
      Serial.println(incomingArray[1]);
      relayStates[0] = (byte(incomingArray[0]) - 48);  //subtract the ASCII value of '0' to convert to actual int Zero.
      relayStates[1] = (byte(incomingArray[1]) - 48);
      Serial.println(relayStates[0]);
      Serial.println(relayStates[1]);
      digitalWrite(relayOne, relayStates[0]);
      digitalWrite(ledOne, relayStates[0]);
      digitalWrite(relayTwo, relayStates[1]);
      digitalWrite(ledTwo, relayStates[1]);
    }
    else // message must not be changing relay states. Convert to strings and look for keywords
    {
      if ((statCall[0] == incomingArray[0]) && (statCall[1] == incomingArray[1]) && (statCall[2] == incomingArray[2]) && (statCall[3] == incomingArray[3]))
      {
        Serial.println(F("got status request"));
        delay(800);       // long delay to let requester switch back to tx mode, will be shorter later after testing (now trying 200, down from 1000)
        sayStatus(sender); // send status message to the address the 'STAT' request came from
      }
    }
  }
  Serial.println("Msg from: " + String(sender, DEC));
  delay(20);
  Serial.println("Msg length: " + String(incomingLength, DEC));
  Serial.print("Msg content: ");
  for (int t = 0; t < incomingLength; t++)
  {
    Serial.print(incomingArray[t]);
  }
  Serial.println("");
  //readPacket = false;
}
void setDestaddr()   // function to set destination address. Runs every time on startup.
{
Serial.println("set destination address");
int j = 0;
for (int i = 5; i < 9; i++) {  //iterate through switchArray and populate with DIP switch reads (pins 5, 6, 7, 8)
  switchArray[j] = digitalRead(i);
  j++;
}
destAddress = (switchArray[0]*1)+(switchArray[1]*2)+(switchArray[2]*4)+(switchArray[3]*8); //convert binary array to decimal address
destAddress += 37;
Serial.print("New destination address: "); Serial.println(destAddress);
}

void setLocaladdr()  //function to set device address. Press and hold push switch when turning-on to enter this function. Set device address with DIP switches while LED is fading, then press again to set address.
{
Serial.println("Set device address");
//digitalWrite(ledTwo, HIGH);
delay(1000);
do {    //fade LED until button is pressed
  for (int k = 255; k > 0; k -=10)
  {
    analogWrite(ledOne, k);
    delay(10);
  }
  for (int k = 0; k< 255; k += 10)
  {
    analogWrite(ledOne, k);
    delay(10);
  }
} while(digitalRead(button)); // continue this loop until button is pressed again.
digitalWrite(ledTwo, LOW);
delay(55);
digitalWrite(ledTwo, HIGH);
delay(55);
digitalWrite(ledTwo, LOW);
int newAddr;
int j = 0;
for (int i = 5; i < 9; i++) {  //iterate through swithArray and populate with DIP switch reads (pins 5, 6, 7, 8)
  switchArray[j] = digitalRead(i);
  j++;
}
newAddr = (switchArray[0]*1)+(switchArray[1]*2)+(switchArray[2]*4)+(switchArray[3]*8); //convert binary array to decimal address
newAddr += 40;
Serial.print("New local address is"); Serial.println(newAddr);
EEPROM.write(1, newAddr);
}

void setup()
{
  Serial.begin(9600);
  Serial.println("Starting up");

  LoRa.setPins(csPin, resetPin, 2);

  //Address select dip switches
  pinMode(jumpone, INPUT_PULLUP);
  pinMode(jumptwo, INPUT_PULLUP);
  pinMode(jumpthree, INPUT_PULLUP);
  pinMode(jumpfour, INPUT_PULLUP);

if (!LoRa.begin(430E6))
  {
    while (1)
    {
      digitalWrite(ledOne, HIGH);
      delay(80);
      digitalWrite(ledOne, LOW);
      delay(80);
    }
  }

  detachInterrupt(digitalPinToInterrupt(2)); //clear that lora interrupt flag, we're not using it.
  pinMode(irqPin, INPUT);
  pinMode(ledOne, OUTPUT);
  pinMode(ledTwo, OUTPUT);
  pinMode(button, INPUT_PULLUP);
  pinMode(relayOne, OUTPUT);
  pinMode(relayTwo, OUTPUT);
  digitalWrite(relayOne, relayStates[0]);
  digitalWrite(relayTwo, relayStates[1]);
  pinMode(temp, INPUT);
  pinMode(extOne, INPUT_PULLUP);
  pinMode(extTwo, INPUT_PULLUP);

  Serial.println("Radio ready");

  //setDestaddr();  //set destination address from the 4 dip switches
  if (digitalRead(button) == LOW){setLocaladdr();} //hold button on startup to enter this function. Set desired local address with DIP switches. Press button again to save new address

  digitalWrite(ledOne, HIGH);
  //digitalWrite(ledTwo, HIGH);
  delay(1000);
  digitalWrite(ledOne, LOW);
  //digitalWrite(ledTwo, LOW);
  pinMode(irqPin, INPUT);
  //localAddress = EEPROM.read(1); //read previously stored local address
  localAddress = 0x14; //20
  destAddress = 0x25; //37

  sayStatus(destAddress); //send a status update to the home raspi when powered up
  //attachInterrupt(digitalPinToInterrupt(irqPin), gotPacket, CHANGE);
  //LoRa.onReceive(onReceive);
  //LoRa.receive();
  LoRa.setSyncWord(0x12);
  Serial.println("starting");
  LoRa.setTxPower(14);
  delay(1000);
  LoRa.receive();
}

void loop()
{
  //delay(50);
  if (digitalRead(button) == LOW) {
    Serial.println("sending");
    sayStatus(0x25);
    delay(500);
  }
  //so this should just poll continuously for new packets, callig for a return of packet size and running if it's > 0
  Receive(LoRa.parsePacket());
  // delay(300);
  // //LoRa.receive();
  // int packetSize = LoRa.parsePacket();
  // //Serial.println(packetSize);
  // if (packetSize)
  // {
  //   Serial.print("receivedPacket");
  //   while (LoRa.available()){
  //       Serial.print((char)LoRa.read());
  //   }
  //   Serial.println(LoRa.packetRssi());
  //   //receiving(packetSize);
  //
  //   //readPacket = false;
  //}
  if (!digitalRead(extOne)) //poll external switch for relay 1 button press
  {
    digitalWrite(relayOne, !digitalRead(relayOne));

    relayStates[0] = !relayStates[0];               // toggle relay setting and update states array
    digitalWrite(ledOne, relayStates[0]);
    delay(200);    // debounce delay
    // put a function here that declares the states
  }
  if (!digitalRead(extTwo)) // poll external switch for relay 2 button pressed
  {
    digitalWrite(relayTwo, !digitalRead(relayTwo));
    relayStates[1] = !relayStates[1];              // toggle relay setting and update status array
    digitalWrite(ledTwo, relayStates[1]);
    delay(200);
  }

  /*{
    Serial.print("heard packet");
    while (LoRa.available())
    {
      Serial.print((char)LoRa.read());
    }
    Serial.println(" "); Serial.println(LoRa.packetRssi());
  }*/
  /*if (digitalRead(irqPin) == HIGH)
  {
    Serial.println("interrupt request recieved");
    int packetSize = LoRa.parsePacket();
    if (packetSize)
    {
      receiving(packetSize);
      readPacket = false;
      delay(200);
    }
  }*/

}
