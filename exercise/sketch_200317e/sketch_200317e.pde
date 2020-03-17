float angle = 0;

void setup()
{
  size(800, 600);
  rectMode(CENTER);
}

void draw()
{
  background(0);
  
  translate(mouseX, mouseY);
  rotate(angle);
  
  rect(0, 0, 100, 200);
  
  angle += 0.1;
}
