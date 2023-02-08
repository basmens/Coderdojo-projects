int circlePosX;
int circlePosY;
int radius;

void setup() {
  size(600, 600);
  
  circlePosX = width / 2;
  circlePosY = height / 2;
  radius = width / 3;
}

void draw() {
  background(0);
  noStroke();
  if (dist(circlePosX, circlePosY, mouseX, mouseY) < radius) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  circle(circlePosX, circlePosY, 2 * radius);
}
