void setup()
{
  size(960, 540);
  smooth();
  
  strokeWeight(3);
  strokeJoin(ROUND);
  
  noFill();
}

void draw()
{
  background(255);
  translate(width/2, height/2);
  
  pushMatrix();
  beginShape();
  for (float q = 0; q <= 20; q+=0.5)
  {
    float l = (sin(radians(q*9+frameCount))*(1+sin(radians(q*9))*(q*3)));
    vertex(l, (10+q*12)+10);
  }
  
  for (float q = 20; q >= 0; q-=0.5)
  {
    float l = (sin(radians(q*9+frameCount))*(1+sin(radians(q*9))*(q*3)));
    vertex(-l, (10+q*12)+10);
  }
  endShape();
  popMatrix();
}
