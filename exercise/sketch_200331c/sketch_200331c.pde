float angle = radians(45);

void setup()
{
  size(960, 540);
  smooth();
  rectMode(CENTER);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  
  rotate(angle);
  rect(0, 0, 100, 100);
  
  angle += 1;
}
