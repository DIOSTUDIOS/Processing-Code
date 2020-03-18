void setup()
{
  size(240, 240);
}

void draw()
{
  pushMatrix();
  translate(mouseX, mouseY);
  rect(0, 0, 30, 30);
  popMatrix();
  
  translate(35, 10);
  rect(0, 0, 15, 15);
}
