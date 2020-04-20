int MAX_SHAPES_CNT = 2500;
int MIN_SHAPES_CNT = 100;
int MAX_VERTEX_CNT = 30;
int MIN_VERTEX_CNT = 3;

int shapesCnt;
int vertexCnt;

int movepoint = 40;
int direction = 1;

float scale = 300;

int referenceTime = 0;
int currentSecond = 0;

PFont font;

void setup()
{
  size(960, 540);
  smooth();
  
  background(0);
  
  strokeWeight(1);
  
  font = createFont("Raleway-Bold.ttf", 32);
  textFont(font);
  textAlign(CENTER);
  textSize(64);
  
  referenceTime = millis();
}

void draw()
{
  background(0);
  currentSecond = millis();
  
  if((currentSecond - referenceTime) <= 10000)
  {
    text("Prepare...", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 10000 && (currentSecond - referenceTime) <= 15000)
  {
    text("Designed by DIOSTUDIO", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 15000 && (currentSecond - referenceTime) <= 35000)
  {
    display();
  }
  
  if((currentSecond - referenceTime) > 35000 && (currentSecond - referenceTime) <= 40000)
  {
    text("Thanks for Watching", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 40000)
  {
    text("END", width/2, height/2);
  }
}

void display()
{
  translate(width/2, height/2);
  
  getCount(movepoint);
  
  for(int i=0; i<shapesCnt; i++)
  {
    float times = float(frameCount) / 20;
    float theta = map(i, 0, shapesCnt, 0, TAU);
    
    PVector shapeCenter = getShapeCenter(times, theta);
    float   shapeSize   = getShapeSize(times, theta);
    color   shapeColour = getShapeColour(times, theta);
    
    stroke(shapeColour);
    noFill();
    
    beginShape();
    for(int j=0; j<vertexCnt; j++)
    {
      float median = map(j, 0, vertexCnt, 0, TAU);
      
      float x = shapeCenter.x + cos(median) * shapeSize;
      float y = shapeCenter.y + sin(median) * shapeSize;
      
      vertex(x, y);
    }
    endShape(CLOSE);
  }
  
  if(movepoint == 40)
  {
    direction = 1;
  }
  
  if(movepoint == 500)
  {
    direction = -1;
  }
  
  movepoint += 2;
}

void getCount(int movepoint)
{
  float shapeCnt = abs(movepoint - width/2);
  float pointCnt = abs(movepoint - height/2);
  
  shapesCnt = int(map(shapeCnt, 0, width/2, MAX_SHAPES_CNT, MIN_SHAPES_CNT));
  vertexCnt = int(map(pointCnt, 0, height/2, MAX_VERTEX_CNT, MIN_VERTEX_CNT));
}

PVector getShapeCenter(float times, float theta)
{
  PVector direction   = new PVector(cos(theta), sin(theta));
  float   distances   = 0.6 + 0.2 * cos(theta * 6 + cos(theta * 8 + times));
  PVector shapeCenter = PVector.mult(direction, distances * scale);
  
  return shapeCenter;
}

float getShapeSize(float time, float theta)
{
  float shapeSize = scale * (0.2 + 0.12 * cos(theta * 9 - time * 2));
  
  return shapeSize;
}

color getShapeColour(float time, float theta)
{
  float median = 8 * theta + time * 2;
  
  float R = 0.6 + 0.4 * cos(median);
  float G = 0.6 + 0.4 * cos(median - PI/3);
  float B = 0.6 + 0.4 * cos(median - TWO_PI/3);
  float A = map(shapesCnt, MIN_SHAPES_CNT, MAX_SHAPES_CNT, 150, 30);
  
  return color((R * 255), (G * 255), (B * 255), A);
}
