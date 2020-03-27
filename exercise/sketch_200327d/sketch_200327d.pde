size(300, 300);
smooth();
background(0);
strokeWeight(2);

for(int y=30; y<=270; y+=10)
{
  for(int x=20; x<=270; x+=20)
  {
    stroke(y, x, 255);
    line(x, y, x+10, y-10); 
  }
}

for(int y=20; y<=260; y+=10)
{
  for(int x=30; x<=270; x+=20)
  {
    stroke(x, y, 255);
    line(x, y, x+10, y+10);
  }
}
