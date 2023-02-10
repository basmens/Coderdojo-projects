float cirkelPositieX;
float cirkelPositieY;
float cirkelSnelheid;
float cirkelRichting;
int cirkelRadius;

int prevTime;

void setup() {
  size(1000, 600);
  
  cirkelPositieX = width / 2;
  cirkelPositieY = height / 2;
  cirkelSnelheid = 200;
  cirkelRichting = random(TWO_PI);
  cirkelRadius = width / 10;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevTime) / 1000F;
  prevTime = millis();
  
  if (cirkelPositieX - cirkelRadius < 0) {
    cirkelRichting = PI - cirkelRichting;
    cirkelPositieX = cirkelRadius;
  } else if (cirkelPositieX + cirkelRadius > width) {
    cirkelRichting = PI - cirkelRichting;
    cirkelPositieX = width - cirkelRadius;
  }
  if (cirkelPositieY - cirkelRadius < 0) {
    cirkelRichting = TWO_PI - cirkelRichting;
    cirkelPositieY = cirkelRadius;
  } else if (cirkelPositieY + cirkelRadius > height) {
    cirkelRichting = TWO_PI - cirkelRichting;
    cirkelPositieY = height - cirkelRadius;
  }
  
  cirkelPositieX += cos(cirkelRichting) * cirkelSnelheid * dt;
  cirkelPositieY += sin(cirkelRichting) * cirkelSnelheid * dt;
     
  noStroke();
  fill(255, 0, 0);
  circle(cirkelPositieX, cirkelPositieY, 2 * cirkelRadius);
}
