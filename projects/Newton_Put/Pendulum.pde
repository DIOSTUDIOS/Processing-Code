class Pendulum
{
  int originX;
  int originY;
  float angle;
  
  Pendulum(int origin_x, int origin_y, float tempAngle)
  {
    originX = origin_x;
    originY = origin_y;
    angle = tempAngle;
  }
  
  void sketch()
  {
    pushMatrix();
    
    translate(originX, originY);
    
    rotate(angle);
    ellipse(0, 300, 50, 50);
    line(0, 0, 0, 300);
    
    popMatrix();
  }
  
  void swingLFall(float speed)
  {
    if(angle > radians(0))
    {
      angle += speed;
      
      if(angle <= radians(0))
      {
        angle = radians(0);
      }
    }
  }
  
  void swingRRise(float speed)
  {
    if(angle > radians(-25))
    {
      angle += speed;
      
      if(angle <= radians(-25))
      {
        angle = radians(-25);
      }
    }
  }
  
  void swingRFall(float speed)
  {
    if(angle < radians(0))
    {
      angle += speed;
      
      if(angle >= radians(0))
      {
        angle = radians(0);
      }
    }
  }
  
  void swingLRise(float speed)
  {
    if(angle < radians(25))
    {
      angle += speed;
      
      if(angle >= radians(25))
      {
        angle = radians(25);
      }
    }
  }
}
