void setup()
{
  size(480, 120);
}

void draw()
{
  background(176, 204, 226);
  
  translate(110, 110);
  stroke(128, 128, 125);
  strokeWeight(70);
  
  line(0, -35, 0, -65);
  noStroke();
  fill(255);
  ellipse(-17.5, -65, 35, 35);
  ellipse(17.5, -65, 35, 35);
  arc(0, -65, 70, 70, 0, PI);
  fill(51, 51, 30);
  ellipse(-14, -65, 8, 8);
  ellipse(14, -65, 8, 8);
  quad(0, -58, 4, -51, 0, -44, -4, -51);
}
