void setup()
{
  size(300, 300);
  background(127);
  smooth();
}

void draw()
{
  fill(255);
  rect(50, 50, 200, 200);
  
  fill(0);
  ellipse(constrain(mouseX, 70, 230), constrain(mouseY, 70, 230), 40, 40);
}
