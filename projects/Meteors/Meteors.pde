//飞星数组
ArrayList meteors  = new ArrayList();
//设置飞星间的连线距离
float distance = 60;
//随机设置飞星的个数
int meteorsNumber = (int)random(240, 480);
//设置边界距离
float route = 551;

int referenceTime = 0;
int currentSecond = 0;

PFont font;

void setup()
{
  size(960, 540);
  smooth();
  //生成飞星数组，个数位meteorsNumber
  for(int i=0; i<meteorsNumber; i++)
  {
    PVector PD = new PVector(random(-480, 480), random(-480, 480));
    Meteor meteor = new Meteor(PD);
    meteors.add(meteor);
  }
  
  referenceTime = millis();
  
  font = createFont("Raleway-Bold.ttf", 32);
  textFont(font);
  textAlign(CENTER);
  textSize(64);
  
  background(0);
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
    show();
  }
  
  if((currentSecond - referenceTime) > 35000 && (currentSecond - referenceTime) <= 40000)
  {
    fill(255);
    text("Thanks for Watching", width/2, height/2);
  }
  
  if((currentSecond - referenceTime) > 40000)
  {
    fill(255);
    text("END", width/2, height/2);
  }
}

void show()
{
  
  translate(width/2, height/2);
  //陆续显示飞星，并且判断两两之间的距离，如果小于等于distance，则绘制一个三角形并填充颜色
  for(int i=0;i<meteors.size();i++)
  {
    Meteor meteor1 = (Meteor) meteors.get(i);
    meteor1.display();
    meteor1.sweep(route);
    
    for(int j=i+1; j<meteors.size(); j++)
    {
      Meteor meteor2 = (Meteor) meteors.get(j);
      meteor2.sweep(route);
      //判断飞星1和飞星2之间的距离
      if(dist(meteor1.location.x, meteor1.location.y, meteor2.location.x, meteor2.location.y) <= distance)
      {
        for(int k=j+1; k<meteors.size(); k++)
        {
          Meteor meteor3 = (Meteor) meteors.get(k);
          meteor3.sweep(route);
          
          fill(meteor3.colour, 50);
          noStroke();
          //判断飞星2和飞星3之间的距离，绘制三角形并填充颜色
          if(dist(meteor3.location.x, meteor3.location.y, meteor2.location.x, meteor2.location.y) <= distance)
          {
            beginShape();
            vertex(meteor3.location.x, meteor3.location.y);
            vertex(meteor2.location.x, meteor2.location.y);
            vertex(meteor1.location.x, meteor1.location.y);
            endShape();
          }
        }
      }
    }
  }
}
