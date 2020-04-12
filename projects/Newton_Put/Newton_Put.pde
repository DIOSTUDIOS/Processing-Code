float speed = 0.006;
int number = (int)random(1, 5) * 2;

Pendulum pendulum1 = new Pendulum(305, 100, radians(25), -speed);
//Pendulum pendulum2 = new Pendulum(355, 100, radians(25), speed, -1);
//Pendulum pendulum3 = new Pendulum(405, 100, radians(25), speed, -1);
//Pendulum pendulum4 = new Pendulum(455, 100, radians(25), speed, -1);

//Pendulum pendulum5 = new Pendulum(505, 100, radians(-25), speed, 1);
//Pendulum pendulum6 = new Pendulum(555, 100, radians(-25), speed, 1);
//Pendulum pendulum7 = new Pendulum(605, 100, radians(-25), speed, 1);
Pendulum pendulum8 = new Pendulum(655, 100, radians(-25), speed);

void setup()
{
  size(960, 540);
  smooth();
  
  background(0);
  
  stroke(255);
  strokeWeight(2);
}

void draw()
{
  background(0);
  
  pendulum1.sketch();
  pendulum1.swingLeft();
  
  //pendulum2.sketch();
  //pendulum2.swingLeft();
  
  //pendulum3.sketch();
  //pendulum3.swingLeft();
  
  //pendulum4.sketch();
  //pendulum4.swingLeft();
  
  //pendulum5.sketch();
  //pendulum5.swingRight();
  
  //pendulum6.sketch();
  //pendulum6.swingRight();
  
  //pendulum7.sketch();
  //pendulum7.swingRight();
  
  pendulum8.sketch();
  pendulum8.swingRight();
}
