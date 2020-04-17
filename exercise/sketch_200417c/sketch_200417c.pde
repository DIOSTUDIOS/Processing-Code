int n = 300;
float t,dt;
float myscale;
float keyHue = 0.0;

void setup()
{
  //var side = windowWidth< windowHeight ? windowWidth : windowHeight ;
  size(960, 540); 
  background(255);
  colorMode(HSB,360,1.0,1.0);
  //background(0,0,1.0);
  
  float foo = 20.0;
  myscale = width < height ? width/foo : height/foo; 
  t = 0.0;
  dt = 0.02;
} 

void draw()
{
  t += dt;
  
  for(int i=0;i<n;i++)
  {
    float theta = 2.39996*i;
    float r = myscale*sqrt(i);
    noStroke();
    float s = i/float(n);
    fill(360 - 60*s,1.0-2.0*s, 0.5 + s );
    
    float d = myscale*(5 + 0.5*sin(t + r));
   
    ellipse(0.5*width + r*sin(theta),0.5*height + r*cos(theta), d, d);
  }
}
