float paddelPositieY;
float paddelSnelheidY;

boolean isWIngedrukt;
boolean isSIngedrukt;

int prevUpdate;

void setup() {
  size(600, 1000);

  paddelSnelheidY = 200;
}

void draw() {
  background(0);

  float dt = (millis() - prevUpdate) / 1000F;
  prevUpdate = millis();

  if (isWIngedrukt) {
    paddelPositieY -= paddelSnelheidY * dt;
  }
  if (isSIngedrukt) {
    paddelPositieY += paddelSnelheidY * dt;
  }

  noStroke();
  fill(230);
  rect(width / 2 - 50, paddelPositieY - 150, 100, 300);
}

void keyPressed() {
  if (key == 'w') {
    isWIngedrukt = true;
  } else if (key == 's') {
    isSIngedrukt = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    isWIngedrukt = false;
  } else if (key == 's') {
    isSIngedrukt = false;
  }
}
