float speed = 0.005;
int number = (int)random(0, 4);
int initX = 305;

Pendulum[] pendulum = new Pendulum[8];

void setup()
{
  size(960, 540);
  smooth();
  
  background(0);
  
  stroke(255);
  strokeWeight(2);
  
  for(int i=0; i<pendulum.length; i++)
  {
    if(i <= number)
    {
      pendulum[i] = new Pendulum(initX, 100, radians(25));
    }
    else
    {
      pendulum[i] = new Pendulum(initX, 100, radians(0));
    }
    
    initX += 50;
  }
}

void draw()
{
  background(0);

  pendulum[0].sketch();
  pendulum[7].sketch();
  
  pendulum[0].swingLFall(-speed);
  pendulum[7].swingRRise(-speed);
  
  //pendulum[7].swingRFall(speed);
  //pendulum[0].swingLRise(speed);
}
