float paddelPositieY;
float paddelSnelheidY;

int prevUpdate;

void setup() {
  size(600, 1000);
  
  paddelSnelheidY = 200;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevUpdate) / 1000F;
  prevUpdate = millis();
  
  if (key == 'w') {
    paddelPositieY -= paddelSnelheidY * dt;
  } else if (key == 's') {
    paddelPositieY += paddelSnelheidY * dt;
  }
  
  noStroke();
  fill(230);
  rect(width / 2 - 50, paddelPositieY - 150, 100, 300);
}
