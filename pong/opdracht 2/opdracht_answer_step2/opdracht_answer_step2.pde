float cirkelPositieX;
float cirkelPositieY;
float cirkelSnelheid;
float cirkelRichting;
int cirkelRadius;

int prevTime;

void setup() {
  size(1000, 600);
  
  cirkelPositieX = 0;
  cirkelPositieY = height;
  cirkelSnelheid = 200;
  cirkelRadius = width / 10;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevTime) / 1000F;
  prevTime = millis();
  
  cirkelRichting = atan2(mouseY - cirkelPositieY, mouseX - cirkelPositieX);
  
  cirkelPositieX += cos(cirkelRichting) * cirkelSnelheid * dt;
  cirkelPositieY += sin(cirkelRichting) * cirkelSnelheid * dt;
     
  noStroke();
  fill(255, 0, 0);
  circle(cirkelPositieX, cirkelPositieY, 2 * cirkelRadius);
}
