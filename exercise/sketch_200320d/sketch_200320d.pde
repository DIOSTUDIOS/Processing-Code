int radius = 40;
int direction = 1;
float speed = 0.5;
float x = 110;

void setup()
{
  size(240, 120);
  ellipseMode(RADIUS);
}

void draw()
{
  background(0);
  
  x += (speed * direction);
  if((x > width-radius) || (x < radius))
  {
    direction = -direction;
  }
  
  if(direction == 1)
  {
    arc(x, 60, radius, radius, 0.52, 5.76);
  }
  else
  {
    arc(x, 60, radius, radius, 3.67, 8.9);
  }
}
