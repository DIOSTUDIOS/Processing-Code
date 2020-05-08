PrintWriter output;

void setup()
{
  size(240, 240);
  output = createWriter("demo.txt");
}

void draw()
{
  point(mouseX, mouseY);
  output.println(mouseX);
}

void keyPressed()
{
  output.flush();
  output.close();
  exit();
}
