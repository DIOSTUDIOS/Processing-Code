int startX = 0;
int startY = 0;
int stopX = 800;
int stopY = 600;

void setup()
{
  size(800, 600);
  background(255);
}

void draw()
{
  line(startX, startY, stopX, stopY);
  
  if(startX != 800)
  {
    startX += 10;
  }
  else
  {
    if(startY != 600)
    {
      startY += 10;
    }
  }
  
  if(stopX != 0)
  {
    stopX -= 10;
  }
  else
  {
    if(stopY != 0)
    {
      stopY -= 10;
    }
  }
}
