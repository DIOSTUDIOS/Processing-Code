PImage img;
 
void setup()
{
  size(500, 500);
  img = loadImage("1.gif");
}
 
void draw()
{
  image(img, 0, 0);
}
