float PHI = (1 + sqrt(5))/2; //golden ratio
Ball[] balls = new Ball[3];

void setup()
{
  size(960, 540);
  colorMode(HSB, 100);
  //drawingContext.shadowBlur = 10;
  //drawingContext.shadowColor = color(0, 10);
}


void draw()
{
  //background("#0C0024");
  background(100);
  
  for (int i = balls.length - 1; i >= 0; i--)
  {
    Ball b = balls[i];
    b.move();
    b.display();
    
    //if (b.isDead())  balls.splice(i,1, 0);
  }
  balls.push(new Ball(10, frameCount*PHI*TWO_PI));
  //image(gra,0,0);
}

class Ball
{
  PVector center;
  PVector dir;
  PVector pos;
  float diam;
  color col;
  
  Ball(float diam_, float _angle)
  {
    center = new PVector(width/2, height/2); 
    dir = new PVector(cos(_angle), sin(_angle));
    pos = center.copy().add(this.dir.mult(1));
    diam = diam_;
    col = color(map(this.dir.heading(), -PI, PI, 0, 100), 90, 100);
  }
  
  void move()
  {
    pos.add(this.dir);
    float d = dist(this.pos.x,this.pos.y, this.center.x,this.center.y);
    float s = min(width, height);
    
    if(d > s*0.4)
    {
      diam = map(d, s*0.4, s*0.45, s*0.04, 0);
    }
    else if(d > s*0.3)
    {
      diam = map(d, s*0.3, s*0.4, s*0.023, s*0.042);
    }
    else
    {
      diam = map(d, 0, s*0.1, 0, s*0.021);
    };
  }
   
  void display()
  {
    noStroke();
    fill(col);
    ellipse(pos.x, pos.y, diam, diam);
  }
  
  boolean isDead()
  {
    if(dist(pos.x, pos.y, center.x, center.y) > min(width,height))
    {
      return true;
    }
    else
    {
      return false;
    }
  }
}
