void setup()
{
  size(300, 300);
}

void draw()
{
  background(204);
  
  int ms = millis();
  int s = second();
  int m = minute();
  int h = hour();
  
  println(ms);
  fill(255, 0, 0);
  rect(ms/100, 0, 30, 70);
  
  fill(0, 255, 0);
  rect(s*2, 75, 30, 70);
  
  fill(0, 0, 255);
  rect(m, 150, 30, 70);
  
  fill(0, 255, 255);
  rect(h, 225, 30, 70);
}
