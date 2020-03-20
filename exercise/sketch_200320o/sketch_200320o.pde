float angle = 0.0;
float offset = 60;
float scalar = 30;
float speed = 0.05;

void setup()
{
  size(1366, 738);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  
  float x = sin(angle)*200;
  float y = cos(angle)*200;
  circle(x, y, 119.1);
  
  angle += 0.008;
}
