int x = 300;
int y = 200;

void setup()
{
  size(800, 600);
}

void draw()
{
  background(0);
  
  if(keyPressed && key==CODED)
  {
    if(keyCode == LEFT)
    {
      x -= 10;
    }
    else if(keyCode == RIGHT)
    {
      x += 10;
    }
    else if(keyCode == UP)
    {
      y -= 10;
    }
    else
    {
      y += 10;
    }
  }
  
  rect(x, y, 100, 100);
}
