void setup()
{
  size(800, 600);
  //background(200);
}

void draw()
{
  // body
  ellipse(400, 325, 150, 150);
  strokeWeight(5);
  strokeCap(ROUND);
  line(400, 325, 400, 240);
  line(400, 325, 450, 250);
  // eyes
  fill(255);
  strokeWeight(0);
  ellipse(375, 300, 40, 40);
  ellipse(425, 300, 40, 40);
  fill(0);
  ellipse(375, 300, 20, 20);
  ellipse(425, 300, 20, 20);
  // move eyes
}
