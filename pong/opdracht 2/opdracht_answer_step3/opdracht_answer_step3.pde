float circlePosX;
float circlePosY;
float circleSpeed;
float circleDirection;
int radius;

int prevTime;

void setup() {
  size(1000, 600);
  
  circlePosX = width / 2;
  circlePosY = height / 2;
  circleSpeed = 200;
  circleDirection = random(TWO_PI);
  radius = width / 10;
}

void draw() {
  background(0);
  
  float dt = (millis() - prevTime) / 1000F;
  prevTime = millis();
  
  if (circlePosX - radius < 0) {
    circleDirection = PI - circleDirection;
    circlePosX = radius;
  }
  if (circlePosX + radius > width) {
    circleDirection = PI - circleDirection;
    circlePosX = width - radius;
  }
  if (circlePosY - radius < 0) {
    circleDirection = TWO_PI - circleDirection;
    circlePosY = radius;
  }
  if (circlePosY + radius > height) {
    circleDirection = TWO_PI - circleDirection;
    circlePosY = height - radius;
  }
  
  circlePosX += cos(circleDirection) * circleSpeed * dt;
  circlePosY += sin(circleDirection) * circleSpeed * dt;
     
  noStroke();
  fill(255, 0, 0);
  circle(circlePosX, circlePosY, 2 * radius);
}
