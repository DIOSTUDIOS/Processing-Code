float x;
float easing = 0.1;

void setup()
{
  size(800, 600);
  stroke(10);
}

void draw()
{
  float targetX = mouseX;
  
  x += (targetX - x) * easing;
  
  //ellipse(x, 40, 12, 12);
  
  point(x, mouseY);
}
