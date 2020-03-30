class Eye
{
  color colour;
  float x;
  float y;
  float xSpeed;
  float diameter;
  
  Eye(color tempC, float tempX, float tempY, float tempD)
  {
    colour = tempC;
    x = tempX;
    y = tempY;
    xSpeed = 1;
    diameter = tempD;
  }
  
  void display()
  {
    stroke(0);
    strokeWeight(diameter/15);
    fill(255);
    ellipse(x, y, diameter*2, diameter);
    
    strokeWeight(diameter/20);
    fill(colour);
    ellipse(x, y, diameter, diameter);
    
    fill(0);
    stroke(0);
    ellipse(x, y, diameter/3, diameter/3);
  }
  
  void move()
  {
    x = x + xSpeed;
    
    if(x > width)
    {
      x = 0;
    }
  }
}
