int radius = 200;

void setup()
{
  size(800, 600);
  ellipseMode(RADIUS);
  
}

void draw()
{
  background(204);
  
  float distance = dist(mouseX, mouseY, 400, 300);
  
  if(distance < radius)
  {
    radius--;
    fill(0);
    
    if(radius < 50)
    {
      radius = 50;
    }
  }
  else
  {
    radius++;
    fill(255);
    
    if(radius > 300)
    {
      radius = 300;
    }
  }
  
  ellipse(400, 300, radius, radius);
}
