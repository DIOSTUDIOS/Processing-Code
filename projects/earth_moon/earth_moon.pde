float angle = 0.0;
float angle2 = 0.0;
float offset = 300;
float scalar = 250;
float speed = 0.02;

void setup()
{
  size(1120, 630);
  strokeWeight(0);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  // sun
  fill(255, 69, 0);
  circle(0, 0, height/3);
  // earth
  fill(0, 0, 255);
  float x = sin(angle)*scalar;
  float y = cos(angle)*scalar;
  circle(x, y, 80);
  
  fill(139, 126, 102);
  translate(x, y);
  float x2 = sin(angle2)*100;
  float y2 = cos(angle2)*100;
  circle(x2, y2, 40);
  
  angle += speed;
  angle2 += 0.03;
}
