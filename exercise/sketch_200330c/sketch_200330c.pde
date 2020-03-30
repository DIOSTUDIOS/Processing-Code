float angleOne;
float angleTwo;

void setup()
{
  size(300, 300, P3D);
  smooth();
  noStroke();
}

void draw()
{
  background(127);
  
  rectMode(CENTER);
  
  pushMatrix();
  translate(100, 100);
  rotateZ(angleOne);
  fill(255);
  rect(0, 0, 100, 100);
  popMatrix();
  angleOne += 0.06;
  
  pushMatrix();
  translate(200, 200);
  rotateY(angleTwo);
  fill(0);
  rect(0, 0, 100, 100);
  popMatrix();
  angleTwo += 0.02;
}
