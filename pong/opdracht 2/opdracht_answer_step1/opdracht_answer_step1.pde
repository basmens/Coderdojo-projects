float circlePosX;
float circlePosY;
float circleSpeedX;
float circleSpeedY;
int radius;

int prevTime;

void setup() {
  size(1000, 600);
  
  circlePosX = 0;
  circlePosY = height;
  circleSpeedX = width / 5;
  circleSpeedY = -height / 5;
  radius = width / 5;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevTime) / 1000F;
  prevTime = millis();
  
  circlePosX += circleSpeedX * dt;
  circlePosY += circleSpeedY * dt;
     
  noStroke();
  fill(255, 0, 0);
  circle(circlePosX, circlePosY, 2 * radius);
}
