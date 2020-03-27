float y = 150;
float s = 0.8;



void setup()
{
  size(300, 300);
  smooth();
  stroke(0);
  //frameRate(12);
}

void draw()
{
  background(0);
  float gravity = abs(y*0.1);
  y += s*gravity;
  
  if((y>height-25 && s>0)||(y<25 && s<0))
  {
    s = -s;
  }
  
  fill(255);
  ellipse(150, y, 50, 50);
}
