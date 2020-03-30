ArrayList poop;
int distance = 60;

void setup()
{
  size(960, 540);
  smooth();
  poop = new ArrayList();
  
  for(int i=0; i<360; i++)
  {
    //PVector PD = new PVector(random(-480, 480), random(-480, 480));
    PVector PD = new PVector(random(width), random(height));
    Dots D = new Dots(PD);
    poop.add(D);
  }
}


void draw()
{
  background(0);
  //translate(width/2, height/2);

  for (int i=0;i<poop.size();i++)
  {
    Dots dots1 = (Dots) poop.get(i);
    dots1.display();
    dots1.update();
    
    for (int j=i+1;j<poop.size();j++)
    {
      Dots dots2 = (Dots) poop.get(j);
      dots2.update();
      if (dist(dots1.location.x, dots1.location.y, dots2.location.x, dots2.location.y)<distance)
      {
        for (int k=j+1;k<poop.size();k++)
        {
          Dots dots3 = (Dots) poop.get(k);
          dots3.update();
          
          fill(dots3.c, 50);
          noStroke();
          
          if (dist(dots3.location.x, dots3.location.y, dots2.location.x, dots2.location.y)<distance)
          {
            beginShape();
            vertex(dots3.location.x, dots3.location.y);
            vertex(dots2.location.x, dots2.location.y);
            vertex(dots1.location.x, dots1.location.y);
            endShape();
          }
        }
      }
    }
  }
}
