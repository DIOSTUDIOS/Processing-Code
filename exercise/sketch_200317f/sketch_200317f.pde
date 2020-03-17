float angle = 0;
int coordX = 0;
int coordY = 0;

void setup()
{
  size(800, 600);
  rectMode(CENTER);
}

void draw()
{
  background(0);
  
  translate(coordX, coordY);
  rotate(angle);
  rect(0, 0, 100, 100);
  
  coordX += 1;
  coordY += 1;
  
  angle += 0.1;
}
