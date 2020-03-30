Eye hiEye;
Eye wiEye = new Eye(color(100, 200, 0), 200, 100, 50);

void setup()
{
  size(300, 300);
  smooth();
  hiEye = new Eye(color(255, 200, 0), 100, 200, 100);
}

void draw()
{
  background(0);
  hiEye.move();
  hiEye.display();
  
  wiEye.move();
  wiEye.display();
}
