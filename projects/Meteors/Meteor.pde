class Meteor
{
  //定义飞星的初始位置，移动速度，颜色
  PVector location;
  PVector speed;
  color   colour;
  //构造函数
  Meteor(PVector site)
  {
    //设置初始位置
    location = site;
    //设置颜色
    int colorSeed = (int)random(0, 5);
    
    if (colorSeed==0) colour = color(#05CDE5);
    if (colorSeed==1) colour = color(#FFB803);
    if (colorSeed==2) colour = color(#FF035B);
    if (colorSeed==3) colour = color(#3D3E3E);
    if (colorSeed==4) colour = color(#D60FFF);
    //设置移动速度
    float speedX = random(-0.01, 0.01);
    float speedY = random(-0.01, 0.01);
    
    speed = new PVector(speedX, speedY);
  }
  //显示飞星
  void display()
  {
    fill(colour);
    noStroke();
    ellipse(location.x, location.y, 2, 2);
  }
  //判断飞星是否移动到边界，是则反向移动
  void sweep(float route)
  {
    if (dist(location.x, location.y, 0, 0) > route)
    {
      speed.mult(-1);
      location.add(speed);
    }
    else
    {
      location.add(speed);
    }
  }
}
