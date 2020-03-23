JitterBug bug = new JitterBug(240, 240, 20);

void setup()
{
  size(480, 480);
}

void draw()
{
  bug.Move();
  bug.Display();
}
