float cirkelPositieX;
float cirkelPositieY;
float cirkelSnelheidX;
float cirkelSnelheidY;
int cirkelRadius;

int prevTime;

void setup() {
  size(1000, 600);
  
  cirkelPositieX = 0;
  cirkelPositieY = height;
  cirkelSnelheidX = width / 5;
  cirkelSnelheidY = -height / 5;
  cirkelRadius = width / 5;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevTime) / 1000F;
  prevTime = millis();
  
  cirkelPositieX += cirkelSnelheidX * dt;
  cirkelPositieY += cirkelSnelheidY * dt;
     
  noStroke();
  fill(255, 0, 0);
  circle(cirkelPositieX, cirkelPositieY, 2 * cirkelRadius);
}
