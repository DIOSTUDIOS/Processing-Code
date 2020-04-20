int circleCnt = 300;
float t = 2;
float dt = 0.02;
float scale;

int referenceTime = 0;
int currentSecond = 0;

PFont font;

void setup()
{
  size(960, 540, P2D);
  background(0);
  smooth();
  colorMode(HSB, 360, 1, 1);
  noStroke();
  
  scale = width<height?(width/10):(height/10);
  
  referenceTime = millis();
  
  font = createFont("Raleway-Bold.ttf", 32);
  textFont(font);
  textAlign(CENTER);
  textSize(64);
} 

void draw()
{
  currentSecond = millis();
  
  if((currentSecond - referenceTime) <= 10000)
  {
    background(0);
    text("Prepare...", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 10000 && (currentSecond - referenceTime) <= 15000)
  {
    background(0);
    text("Designed by DIOSTUDIO", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 15000 && (currentSecond - referenceTime) <= 35000)
  {
    display();
  }
  
  if((currentSecond - referenceTime) > 35000 && (currentSecond - referenceTime) <= 40000)
  {
    background(0);
    text("Thanks for Watching", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 40000)
  {
    background(0);
    text("END", width/2, height/2);
  }
}

void display()
{
  t += dt;
  
  for(int i=0; i<circleCnt; i++)
  {
    float theta    = 2.39996 * i;
    float radius   = scale * sqrt(i);
    float diameter = scale * (5 + 0.5 * sin(t + radius));
    float colour   = i / float(circleCnt);
    
    fill((360-60*colour), (1.0-2.0*colour), (0.5+colour));
   
    ellipse((0.5*width+radius*sin(theta)),(0.5*height+radius*cos(theta)), diameter, diameter);
  }
}
