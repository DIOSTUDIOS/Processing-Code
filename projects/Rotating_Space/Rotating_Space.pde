float angle = 0;
float side = 10;
color colour;
int direction = 1;
float growthRate = 0.1;

void setup()
{
  size(960, 540);
  smooth();
  background(0);
  //stroke(255);
  strokeWeight(1);
  noFill();
  rectMode(CENTER);
}

void draw()
{
  translate(width/2, height/2);
  
  int colorSeed = (int)random(1, 6);
  
  if(colorSeed == 1) colour = color(#05CDE5);
  if(colorSeed == 2) colour = color(#FFB803);
  if(colorSeed == 3) colour = color(#FF035B);
  if(colorSeed == 4) colour = color(#3D3E3E);
  if(colorSeed == 5) colour = color(#D60FFF);
  
  stroke(colour);
  
  rotate(radians(angle));
  rect(0, 0, side, side);
  
  if(side > width || side < 0)
  {
    direction = -direction;
    growthRate += 0.01;
  }
  
  angle += 20*direction*growthRate;
  side += 50*direction*growthRate;
}
