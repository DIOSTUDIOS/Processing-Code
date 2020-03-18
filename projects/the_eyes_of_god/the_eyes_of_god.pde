void setup()
{
  size(800, 600);
  background(0);
}

void draw()
{
  fill(255);
  arc(400, 300, 400, 150, 0, PI);
  arc(400, 300, 400, 150, PI, TWO_PI);
  
  fill(204);
  ellipse(400, 300, 150, 150);
  
}
