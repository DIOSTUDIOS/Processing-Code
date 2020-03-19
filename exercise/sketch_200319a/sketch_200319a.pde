PFont font;

void setup()
{
  size(600, 240);
  font = createFont("Microsoft Zhenghei.ttf", 32);
  textFont(font);
}

void draw()
{
  background(102);
  textSize(32);
  text("这是我的一小步", 25, 60);
  textSize(32);
  text("but one big step for human...", 25, 120);
}
