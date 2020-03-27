void setup()
{
  size(300, 300);
  background(255);
  smooth();
  colorMode(HSB, 360, 100, 100);
}

void draw(){}

void mouseMoved()
{
  float k = dist(mouseX, mouseY, pmouseX, pmouseY);
  stroke(random(19, 78), 100, 100);
  strokeWeight(k);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
