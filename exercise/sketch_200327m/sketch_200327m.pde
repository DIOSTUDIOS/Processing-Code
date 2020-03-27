float radius = 100;
float angle = 0;

void setup()
{
  size(300, 300);
  background(0);
  smooth();
  stroke(255);
  fill(0);
}

void draw()
{
  float x = radius * cos(angle);
  float y = radius * sin(angle);
  
  ellipse(x+width/2, y+height/2, 100, 100);
  
  angle += 0.01;
}
