int cirkelPositieX;
int cirkelPositieY;
int cirkelRadius;

int rechthoekPositieX;
int rechthoekPositieY;
int rechthoekBreedte;
int rechthoekHoogte;

void setup() {
  size(600, 600);

  cirkelRadius = width / 8;
  rechthoekPositieX = width / 2;
  rechthoekPositieY = height / 2;
  rechthoekBreedte = width / 5;
  rechthoekHoogte = width / 2;
}

void draw() {
  background(0);

  cirkelPositieX = mouseX;
  cirkelPositieY = mouseY;
  
  stroke(40);
  strokeWeight(2);
  fill(230);
  rect(rechthoekPositieX - rechthoekBreedte / 2, rechthoekPositieY - rechthoekHoogte / 2, rechthoekBreedte, rechthoekHoogte);

  int dx = max(rechthoekPositieX - rechthoekBreedte / 2 - mouseX, mouseX - rechthoekPositieX - rechthoekBreedte / 2, 0);
  int dy = max(rechthoekPositieY - rechthoekHoogte / 2 - mouseY, mouseY - rechthoekPositieY - rechthoekHoogte / 2, 0);
  if (sqrt(sq(dx) + sq(dy)) < cirkelRadius) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);
  }
  noStroke();
  circle(cirkelPositieX, cirkelPositieY, 2 * cirkelRadius);
}
