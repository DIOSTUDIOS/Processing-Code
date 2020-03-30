float radius = 10;
float angle = 0;
float diameter = 15;

void setup()
{
  size(300, 300);
  background(0);
  smooth();
  noStroke();
  fill(255);
}

void draw()
{
  float x = radius * cos(angle);
  float y = radius * sin(angle);
  
  ellipse(width/2+x, height/2+y, diameter, diameter);
  
  angle += 0.05;
  radius += 0.15;
  diameter -= 0.01;
}
