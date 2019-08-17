#include <Arduino.h>
#include <SPI.h>
#include <LoRa.h>

#define ledOne 3
#define ledTwo 2
#define testSw 4
#define relayOne A3
#define relayTwo A2
#define temp     A1
#define eswOne   A5
#define eswTwo   A4

const int csPin = 10;          // LoRa radio chip select
const int resetPin = A0;       // LoRa radio reset
const int irqPin = 9;         // This is not an interrupt. Radio must be polled for new packets

byte msgCount = 0;
byte localAddress = 0x14;    //20
byte destination = 0x25;

bool status[2] = {false, false};

void setup()
{
  Serial.begin(9600);
  pinMode(ledOne, OUTPUT);
  pinMode(ledTwo, OUTPUT);
  pinMode(testSw, INPUT_PULLUP);
  pinMode(relayOne, OUTPUT);
  pinMode(relayTwo, OUTPUT);
  pinMode(temp, INPUT);
  pinMode(eswOne, INPUT_PULLUP);
  pinMode(eswTwo, INPUT_PULLUP);

  Serial.println("pin setup complete");

  LoRa.setPins(csPin, resetPin, irqPin);
  if (!LoRa.begin(430E6))
  {
      Serial.println("Starting LoRa failed!");
      while (1);
  }
  Serial.println("Radio ready!");
}

void loop()
{
    Serial.println("Running");
    digitalWrite(relayTwo, LOW);
    digitalWrite(ledOne, HIGH);
    delay(500);
    digitalWrite(ledTwo, HIGH);
    digitalWrite(ledOne, LOW);
    delay(500);
    digitalWrite(ledTwo, LOW);
    digitalWrite(relayOne, HIGH);
    delay(500);
    digitalWrite(relayOne, LOW);
    digitalWrite(relayTwo, HIGH);
    delay(500);
}
