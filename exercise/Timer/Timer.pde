float angle = radians(0);
float speed = 0.009;
int direction = 1;

int hour   = 0;
int minute = 0;
int second = 0;

void setup()
{
  size(960, 540);
  smooth();
  
  textAlign(CENTER);
  textSize(64);
  
  //ellipseMode(CENTER);
}

void draw()
{
  background(0);
  
  hour   = hour();
  minute = minute();
  second = second();
  
  text(hour + ":" + minute + ":" + second, width/2, height/4);
  
  translate(width/2, 200);
  rotate(angle);
  ellipse(0, 300, 50, 50);
  
  angle += speed * direction;
  
  if(angle >= radians(25) || angle <= radians(-25))
  {
    direction = -direction;
  }
}
