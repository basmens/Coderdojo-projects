float paddelPos;
float paddelSpeed;

int prevUpdate;

void setup() {
  size(600, 1000);
  
  paddelSpeed = 200;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevUpdate) / 1000F;
  prevUpdate = millis();
  
  if (keyPressed) {
    if (key == 'w') {
      paddelPos -= paddelSpeed * dt;
    }
    if (key == 's') {
      paddelPos += paddelSpeed * dt;
    }
  }
  
  noStroke();
  fill(230);
  rect(width / 2 - 50, paddelPos - 150, 100, 300);
}
