class Pendulum
{
  int originX;
  int originY;
  float angle;
  float speed;
  
  Pendulum(int origin_x, int origin_y, float tempAngle, float tempSpeed)
  {
    originX = origin_x;
    originY = origin_y;
    angle = tempAngle;
    speed = tempSpeed;
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
  
  void swingLeft()
  {
    angle += speed;
    
    if(angle >= radians(25) || angle <= radians(0))
    {
      speed = -speed;
    }
  }
  
  void swingRight()
  {
    angle += speed;
    
    if(angle >= radians(0) || angle <= radians(-25))
    {
      speed = -speed;
    }
  }
}
