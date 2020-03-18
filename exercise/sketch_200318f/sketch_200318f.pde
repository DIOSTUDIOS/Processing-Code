PImage img;

void setup()
{
  size(480, 480);
  img = loadImage("image.jpg");
}

void draw()
{
  image(img, 0, 0);
}
