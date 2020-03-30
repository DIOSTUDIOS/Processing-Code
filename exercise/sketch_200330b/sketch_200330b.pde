float angle = 0;

void setup()
{
  size(300, 300);
  smooth();
  background(255);
  colorMode(HSB, 360, 100, 100);
}

void draw()
{
  fill(0, 0, 100, 10);
  rect(0, 0, width, height);
  
  angle += 0.1;
  
  translate(random(width), random(height));
  rotate(angle);
  
  fill(random(360), 100, 100);
  line(-50, 0, 50, 0);
  ellipse(-50, 0, 10, 10);
  ellipse(50, 0, 10, 10);
}
