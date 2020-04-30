// 设置图形的大小
float ratio = 12;
float direction = 0.1;
float quantity = 12;

void setup()
{
  size(960, 540);
  smooth();
  
  strokeJoin(ROUND);
  stroke(215, 96, 52, 100);
  strokeWeight(3);
  
  noFill();
  //fill(198, 63, 54);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  
  // 设置基本图形的密度
  for (int density=0; density<360; density+=quantity)
  {
    pushMatrix();
    rotate(radians(density));
    
    beginShape();
    for (float q = 0; q <= 20; q+=0.5)
    {
      float l = (sin(radians(q*9+frameCount))*(1+sin(radians(q*9))*(q*3)));
      vertex(l, (10+q*ratio)+10);
    }
    
    for (float q = 20; q >= 0; q-=0.5)
    {
      float l = (sin(radians(q*9+frameCount))*(1+sin(radians(q*9))*(q*3)));
      vertex(-l, (10+q*ratio)+10);
    }
    endShape();
    
    popMatrix();
  }
  
  if(ratio > 12 || ratio < 10)
  {
    direction = -direction;
  }
  
  ratio += direction * 0.2;
}
