PFont font;
String quote = "这是我的一小步，但是人类的一大步！";

void setup()
{
  size(600, 120);
  background(102);
  font = createFont("Microsoft Yahei.ttf", 32);
  textFont(font);
}

void draw()
{  
  textSize(32);
  text(quote, 25, 60);
}
