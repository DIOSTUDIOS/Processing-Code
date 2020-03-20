float angle = 0.0;
float angle2 = 0.0;
float offset = 60;
float scalar = 30;
float speed = 0.05;

void setup()
{
  size(800, 600);
}

void draw()
{
  background(0);
  translate(400, 300);
  
  float x = sin(angle)*scalar;
  float y = cos(angle)*scalar;
  circle(x, y, 40);
  
  float x2 = sin(angle2)*100;
  float y2 = cos(angle2)*100;
  circle(x2, y2, 40);
  
  angle += speed;
  angle2 += 0.01;
}
