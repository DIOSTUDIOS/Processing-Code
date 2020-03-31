float diameter = 70;
float angle = 90;
int direction = 1;

void setup()
{
  size(960, 540);
  smooth();
  stroke(255);
  strokeWeight(2);
  ellipseMode(CENTER);
}

void draw()
{
  background(0);
  
  pushMatrix();
  translate(width/2, height/3*2);
  
  line(-245, 0, -245, -360);
  ellipse(-245, 0, diameter, diameter);
  
  line(-175, 0, -175, -360);
  ellipse(-175, 0, diameter, diameter);
  
  line(-105, 0, -105, -360);
  ellipse(-105, 0, diameter, diameter);
  
  line(-35, 0, -35, -360);
  ellipse(-35, 0, diameter, diameter);
  
  line(35, 0, 35, -360);
  ellipse(35, 0, diameter, diameter);
  
  line(105, 0, 105, -360);
  ellipse(105, 0, diameter, diameter);
  
  line(175, 0, 175, -360);
  ellipse(175, 0, diameter, diameter);
  
  line(245, 0, 245, -360);
  ellipse(245, 0, diameter, diameter);
  popMatrix();
  
  pushMatrix();
  translate(135, 0);
  if(angle > 135 || angle < 90)
  {
    direction = -direction;
  }
  rotate(radians(angle));
  angle += 1*direction;
  popMatrix();
}
