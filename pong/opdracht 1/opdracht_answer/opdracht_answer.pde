int radius = 200;
int centerX;
int centerY;

void setup() {
  size(600, 600);
  centerX = width / 2;
  centerY = height / 2;
}

void draw() {
  background(0);
  noStroke();
  if (dist(centerX, centerY, mouseX, mouseY) < radius) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  circle(centerX, centerY, radius * 2);
}
