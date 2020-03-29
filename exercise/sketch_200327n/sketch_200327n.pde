float radius = sqrt(sq(480)+sq(270));
float angle = 0;

void setup()
{
  size(960, 540);
  background(0);
  smooth();
  stroke(255);
  fill(0);
}

void draw()
{
  float x = radius * cos(angle);
  float y = radius * sin(angle);
  
  ellipse(x+width/2, y+height/2, 20, 20);
  
  angle += 0.1;
  radius -= 0.1;
}
