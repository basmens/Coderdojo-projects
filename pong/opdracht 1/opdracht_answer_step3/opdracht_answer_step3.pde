int circlePosX;
int circlePosY;
int radius;

int rectPosX;
int rectPosY;
int rectWidth;
int rectHeight;

void setup() {
  size(600, 600);

  radius = width / 8;
  rectPosX = width / 2;
  rectPosY = height / 2;
  rectWidth = width / 5;
  rectHeight = width / 2;
}

void draw() {
  background(0);

  circlePosX = mouseX;
  circlePosY = mouseY;
  
  stroke(40);
  strokeWeight(2);
  fill(230);
  rect(rectPosX - rectWidth / 2, rectPosY - rectHeight / 2, rectWidth, rectHeight);

  int dx = max(rectPosX - rectWidth / 2 - mouseX, mouseX - rectPosX - rectWidth / 2, 0);
  int dy = max(rectPosY - rectHeight / 2 - mouseY, mouseY - rectPosY - rectHeight / 2, 0);
  if (sqrt(sq(dx) + sq(dy)) < radius) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  noStroke();
  circle(circlePosX, circlePosY, 2 * radius);
}
