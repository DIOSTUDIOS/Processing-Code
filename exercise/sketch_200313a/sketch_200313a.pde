void setup()
{
  size(800, 600);
  stroke(0, 102);
}

void draw()
{
  float weight = dist(mouseX, mouseY, pmouseX, pmouseY);
  strokeWeight(weight);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
