class JitterBug
{
  float x;
  float y;
  int diameter;
  float speed = 5;
  
  JitterBug(float tempX, float tempY, int tempDiameter)
  {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
  }
  
  void Move()
  {
    x += random(-speed, speed);
    y += random(-speed, speed);
  }
  
  void Display()
  {
    ellipse(x, y, diameter, diameter);
  }
}
