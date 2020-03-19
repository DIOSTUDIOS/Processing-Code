PShape picture;

void setup()
{
  size(800, 600);
  picture = loadShape("animals.svg");
}

void draw()
{
  //background(0);
  shape(picture, 0, 0, 800, 600);
}
