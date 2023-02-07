void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  noStroke();
  if (dist(width / 2, height / 2, mouseX, mouseY) < 200) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  ellipse(width / 2, height / 2, 400, 400);
}
