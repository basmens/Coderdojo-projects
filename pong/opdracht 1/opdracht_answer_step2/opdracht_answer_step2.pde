int cirkelPositieX;
int cirkelPositieY;
int cirkelRadius;

void setup() {
  size(600, 600);
  
  cirkelPositieX = width / 2;
  cirkelPositieY = height / 2;
  cirkelRadius = width / 3;
}

void draw() {
  background(0);
  noStroke();
  if (dist(cirkelPositieX, cirkelPositieY, mouseX, mouseY) < cirkelRadius) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  circle(cirkelPositieX, cirkelPositieY, 2 * cirkelRadius);
}
