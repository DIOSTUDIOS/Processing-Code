int basicsTime;
int thisMoment;
int timer = 0;

void setup()
{
  size(400, 300);
  smooth();
  textAlign(CENTER);
  textSize(64);
  basicsTime = millis();
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  
  thisMoment = millis();
  
  timer = second();

  if((thisMoment - basicsTime) <= 5000)
  {
    text("prepare...", 0, 0);
    text(timer, 0, 100);
  }
  else if((thisMoment - basicsTime) <= 20000 && (thisMoment - basicsTime) > 5000)
  {
    text("showing...", 0, 0);
    text(timer, 0, 100);
  }
  else if((thisMoment - basicsTime) > 20000)
  {
    text("finished...", 0, 0);
    text(timer, 0, 100);
  }
}
