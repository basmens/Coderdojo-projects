float circlePosX;
float circlePosY;
float circleSpeed;
float circleDirection;
int radius;

int prevTime;

void setup() {
  size(1000, 600);
  
  circlePosX = 0;
  circlePosY = height;
  circleSpeed = 200;
  radius = width / 10;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevTime) / 1000F;
  prevTime = millis();
  
  circleDirection = atan2(mouseY - circlePosY, mouseX - circlePosX);
  
  circlePosX += cos(circleDirection) * circleSpeed * dt;
  circlePosY += sin(circleDirection) * circleSpeed * dt;
     
  noStroke();
  fill(255, 0, 0);
  circle(circlePosX, circlePosY, 2 * radius);
}
