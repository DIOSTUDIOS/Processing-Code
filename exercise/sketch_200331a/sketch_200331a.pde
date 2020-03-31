void setup()
{
  size(960, 540);
  smooth();
  //background(0);
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  textSize(64);
  textAlign(CENTER);
  
  println(second());
  
  if(second() < 5)
  {
    text("Designed by DIOSTUDO", 0, 0);
  }
  else
  {
    text("www.diostudio.wang", 0, 0);
  }
}
