int circleCnt = 300;
float t = 2;
float dt = 0.02;
float scale;

void setup()
{
  size(960, 540, P2D);
  smooth();
  colorMode(HSB, 360, 1, 1);
  noStroke();
  
  scale = width<height?(width/10):(height/10);
} 

void draw()
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
