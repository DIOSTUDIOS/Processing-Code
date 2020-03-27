void setup()
{
  size(960, 540);
  smooth();
  background(255);
  stroke(0, 120);
  colorMode(HSB, 360, 100, 100);
}

void draw()
{
  float d = random(50);
  
  fill(random(360), 100, 100, 100);
  ellipse(random(width), random(height), d, d);
}
