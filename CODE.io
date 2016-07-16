/*
  TreeFi Simulator

  Dieser Code simuliert das Verhalten des bei Jugend Hackt Ost 2015 entwickelten Projekts Treefi
  Dabei werden die Zustände wie Strom, Wasser, WiFi mithilfe von LEDs angezeigt und der Lego Radfahrer 
  wird über einen Motor angetrieben. (In wirklichkeit würde der echte Radfahrer den Strom erzeugen.
  Hierfür müste der Code angepasst werden.)

  Der Code wurde entwickelt für ein Arduino Uno.
  (Zum aufspielen des Codes wählt man den Atmel STK500 development board)
  
 */

 int STROM = 13;    // LED, die anzeigt, ob Strom an ist
 int WASSER = 12;   // LED, die anzeigt wieviel Wasser da ist  
 int WLAN1 = 8;     // LED, die leuchtet, wenn das WLAN aktiv ist
 int WLAN2 = 2;     // LED, die leuchtet, wenn das WLAN aktiv ist
 int RAD = 4;       // Steuerausgang zum ein- und ausschalten des Radfahrers


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin 13 as an output.
  pinMode(WASSER, OUTPUT);  
  pinMode(STROM, OUTPUT);  
  pinMode(WLAN1,OUTPUT); 
  pinMode(WLAN2,OUTPUT); 
  pinMode(RAD,OUTPUT); 
  
}
  //HIGH heißt EIN, LOW heißt AUS
  
// the loop function runs over and over again forever
void loop() 
{
  // zustand zu wenig Wasser, kein Radfahrer
  // 10 Sekunden
  digitalWrite(STROM,LOW);
  digitalWrite(WLAN1,LOW);
  digitalWrite(WLAN2,LOW);
  digitalWrite(RAD,LOW);
//  digitalWrite(WASSER,LOW);
  
  
  int i = 0;
  while(i < 25)
  {
    digitalWrite(WASSER,HIGH);
    delay(200);
    digitalWrite(WASSER,LOW);
    delay(200);
    i++;
  }
  //**********************************
  // Radfahrer fängt an zu treten, noch kein Strom, kein Wasser, kein WLAN
  // 5 Sekunden
  digitalWrite(STROM,LOW);
  digitalWrite(WLAN1,LOW);
  digitalWrite(WLAN2,LOW);
  digitalWrite(RAD,HIGH);
//  digitalWrite(WASSER,LOW);
  i = 0;
  while(i < 12)
  {
    digitalWrite(WASSER,HIGH);
    delay(200);
    digitalWrite(WASSER,LOW);
    delay(200);
    i++;
  }
  //**********************************
  // Radfahrer tritt, Strom geht an, kein Wasser, kein WLAN
  // 10 Sekunden
  digitalWrite(STROM,HIGH);
  digitalWrite(WLAN1,LOW);
  digitalWrite(WLAN2,LOW);
  digitalWrite(RAD,HIGH);
//  digitalWrite(WASSER,LOW);
  i = 0;
  while(i < 25)
  {
    digitalWrite(WASSER,HIGH);
    delay(200);
    digitalWrite(WASSER,LOW);
    delay(200);
    i++;
  }
  //**********************************
  // Radfahrer tritt, Strom geht an, genug Wasser, WLAN geht an
  // 15 Sekunden
  digitalWrite(STROM,HIGH);
  digitalWrite(RAD,HIGH);
  digitalWrite(WASSER,HIGH);
  
  delay(1000);
  digitalWrite(WLAN1,HIGH);
  digitalWrite(WLAN2,HIGH);
  
  delay(14000);
  
  //**********************************
  // Radfahrer tritt, Strom bleibt an, ZUVIEL Wasser, WLAN bleibt an
  // 6 Sekunden
  digitalWrite(STROM,HIGH);
  digitalWrite(RAD,HIGH);
//  digitalWrite(WASSER,HIGH);
  
  digitalWrite(WLAN1,HIGH);
  digitalWrite(WLAN2,HIGH);
  i = 0;
  while(i < 6)
  {
    digitalWrite(WASSER,HIGH);
    delay(500);
    digitalWrite(WASSER,LOW);
    delay(500);
    i++;
  }
  //**********************************
  // Radfahrer STOPPT, Strom bleibt an, ZU VIEL Wasser, WLAN bleibt an
  // 6 Sekunden
  digitalWrite(STROM,HIGH);
  digitalWrite(RAD,LOW);
//  digitalWrite(WASSER,HIGH);
  
  digitalWrite(WLAN1,HIGH);
  digitalWrite(WLAN2,HIGH);
  i = 0;
  while(i < 6)
  {
    digitalWrite(WASSER,HIGH);
    delay(500);
    digitalWrite(WASSER,LOW);
    delay(500);
    i++;
  }
  //**********************************
  // Radfahrer STOPPT, Strom geht aus, WASSER normal, WLAN aus
  // 6 Sekunden
  digitalWrite(WASSER,HIGH);
  digitalWrite(STROM,LOW);
  digitalWrite(RAD,LOW);
  delay(1000);
  digitalWrite(WLAN1,LOW);
  digitalWrite(WLAN2,LOW);
  delay(2000);

  delay(3000);
}

