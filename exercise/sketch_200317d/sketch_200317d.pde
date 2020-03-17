float angle = 0;
int x = 0;
int y = 0;

void setup()
{
  size(800, 600);
  rectMode(CENTER);
}

void draw()
{
  translate(x, y);
  rotate(angle);
  rect(400, 300, 50, 50);
  angle += 0.1;
  x += 1;
  y -= 1;
}
