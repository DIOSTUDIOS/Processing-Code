float t = 0;

void setup()
{
  size(960, 540);
  smooth();
  noFill();
  colorMode(HSB);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  
  int c = 200;
  for(float i=0; i<6.3; i+=0.1)
  {
    stroke(i*60, width, width);
    circle(sin(i)*c/2, cos(i)*c/2, abs(cos(t+i)*c));
  }
  
  t += 0.02;
}
