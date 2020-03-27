size(300, 300);
background(255);
smooth();
noFill();

for(int i=0; i<400; i+=15)
{
  stroke(0);
  strokeWeight(i/35);
  circle(150, 150, i+i/3);
}
