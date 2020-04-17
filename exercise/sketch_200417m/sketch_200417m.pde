int[] ligne1 = {2, 2, 2};
int[] ligne2 = {2, 2, 2};
int[] ligne3 = {2, 2, 2};
int[] coordsline = {150,350,550,250,450,650};
int[] coordscircle = {200,400,600};
int tour = 0;
int[] cases = {2,2,2,2,2,2,2,2,2};
int c = 0;
int a = 100;
int b = 0;

void setup()
{
  size(800, 800);
  background(48, 171, 135);
}

void draw() {
  stroke(80);
  strokeWeight(20);
  fill(80);
  line(300,110,300,690);
  line(500,110,500,690);
  line(110,300,690,300);
  line(110,500,690,500);
  fill(126, 3, 2);
  stroke(126, 3, 2);
  strokeWeight(17);
  for(int i=0 ; i<3 ; i++)
  {
    fill(126, 3, 2);
    stroke(126, 3, 2);
    if(ligne1[i]==0)
    {
      line(coordsline[i],coordsline[0],coordsline[i+3],coordsline[3]);
      line(coordsline[i],coordsline[3],coordsline[i+3],coordsline[0]);
    }
    if(ligne2[i]==0)
    {
      line(coordsline[i],coordsline[1],coordsline[i+3],coordsline[4]);
      line(coordsline[i],coordsline[4],coordsline[i+3],coordsline[1]);
    }
    if(ligne3[i]==0)
    {
      line(coordsline[i],coordsline[2],coordsline[i+3],coordsline[5]);
      line(coordsline[i],coordsline[5],coordsline[i+3],coordsline[2]);
    }
    fill(48, 171, 135);
    stroke(210, 210, 210);
    if(ligne1[i]==1)
    {
      circle(coordscircle[i],200,110);
    }
    if(ligne2[i]==1)
    {
      circle(coordscircle[i],400,110);
    }
    if(ligne3[i]==1)
    {
      circle(coordscircle[i],600,110);
    }
  }
}
void mouseClicked()
  {
    if(mouseX<300 && mouseX>=100 && mouseY<300 && mouseY>=100 && ligne1[0]==2)
    {
      ligne1[0]=0;
      cases[0]=0;
      c=1;
    }
    if(mouseX<500 && mouseX>300 && mouseY<300 && mouseY>=100 && ligne1[1]==2)
    {
      ligne1[1]=0;
      cases[1]=0;
      c=1;
    }
    if(mouseX>500 && mouseX<=700 && mouseY<300 && mouseY>=100 && ligne1[2]==2)
    {
      ligne1[2]=0;
      cases[2]=0;
      c=1;
    }
    if(mouseX<300 && mouseX>=100 && mouseY<500 && mouseY>300 && ligne2[0]==2)
    {
      ligne2[0]=0;
      cases[3]=0;
      c=1;
    }
    if(mouseX<500 && mouseX>300 && mouseY<500 && mouseY>300 && ligne2[1]==2)
    {
      ligne2[1]=0;
      cases[4]=0;
      c=1;
    }
    if(mouseX<=700 && mouseX>500 && mouseY<500 && mouseY>300 && ligne2[2]==2)
    {
      ligne2[2]=0;
      cases[5]=0;
      c=1;
    }
    if(mouseX<300 && mouseX>=100 && mouseY<=700 && mouseY>500 && ligne3[0]==2)
    {
      ligne3[0]=0;
      cases[6]=0;
      c=1;
    }
    if(mouseX<500 && mouseX>300 && mouseY<=700 && mouseY>500 && ligne3[1]==2)
    {
      ligne3[1]=0;
      cases[7]=0;
      c=1;
    }
    if(mouseX<=700 && mouseX>500 && mouseY<=700 && mouseY>500 && ligne3[2]==2)
    {
      ligne3[2]=0;
      cases[8]=0;
      c=1;
    }
    textSize(20);
    if(ligne1[0]==0 && ligne2[0]==0 && ligne3[0]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne1[1]==0 && ligne2[1]==0 && ligne3[1]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne1[2]==0 && ligne2[2]==0 && ligne3[2]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne1[0]==0 && ligne1[1]==0 && ligne1[2]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne2[0]==0 && ligne2[1]==0 && ligne2[2]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne3[0]==0 && ligne3[1]==0 && ligne3[2]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne1[0]==0 && ligne2[1]==0 && ligne3[2]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(ligne1[2]==0 && ligne2[1]==0 && ligne3[0]==0)
    {
      text("Gagné !",380,50);
      b=1;
    }
    if(c==1 && b!=1)
    {
      tour=tour+1;
      if(tour==1)
      {
        a=int(random(0,8));
        while(cases[a]!=2)
        {
          a=int(random(0,8));
        }
      }
      if(tour==2)
      {
        if(ligne1[0]==0 && ligne1[1]==0)
        {
          a=2;
        }
          if(ligne1[1]==0 && ligne1[2]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne1[2]==0)
        {
          a=1;
        }
        if(ligne2[0]==0 && ligne2[1]==0)
        {
          a=5;
        }
          if(ligne2[1]==0 && ligne2[2]==0)
        {
          a=3;
        }
          if(ligne2[0]==0 && ligne2[2]==0)
        {
          a=4;
        }
        if(ligne3[0]==0 && ligne3[1]==0)
        {
          a=8;
        }
          if(ligne3[1]==0 && ligne3[2]==0)
        {
          a=6;
        }
          if(ligne3[0]==0 && ligne3[2]==0)
        {
          a=7;
        }
        if(ligne1[0]==0 && ligne2[0]==0)
        {
          a=6;
        }
          if(ligne3[0]==0 && ligne2[0]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne3[0]==0)
        {
          a=3;
        }
        if(ligne1[1]==0 && ligne2[1]==0)
        {
          a=7;
        }
          if(ligne3[1]==0 && ligne2[1]==0)
        {
          a=1;
        }
          if(ligne1[1]==0 && ligne3[1]==0)
        {
          a=4;
        }
        if(ligne1[2]==0 && ligne2[2]==0)
        {
          a=8;
        }
          if(ligne3[2]==0 && ligne2[2]==0)
        {
          a=2;
        }
          if(ligne1[2]==0 && ligne3[2]==0)
        {
          a=5;
        }
        if(ligne1[0]==0 && ligne2[1]==0)
        {
          a=8;
        }
          if(ligne2[1]==0 && ligne3[2]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne3[2]==0)
        {
          a=4;
        }
        if(ligne1[2]==0 && ligne2[1]==0)
        {
          a=6;
        }
          if(ligne2[1]==0 && ligne3[0]==0)
        {
          a=2;
        }
          if(ligne1[2]==0 && ligne3[0]==0)
        {
          a=4;
        }
        while(cases[a]!=2 || a==100)
        {
          a=int(random(0,8));
        }
      }
      if(tour==3)
      {
        if(ligne1[0]==0 && ligne1[1]==0)
        {
          a=2;
        }
          if(ligne1[1]==0 && ligne1[2]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne1[2]==0)
        {
          a=1;
        }
        if(ligne2[0]==0 && ligne2[1]==0)
        {
          a=5;
        }
          if(ligne2[1]==0 && ligne2[2]==0)
        {
          a=3;
        }
          if(ligne2[0]==0 && ligne2[2]==0)
        {
          a=4;
        }
        if(ligne3[0]==0 && ligne3[1]==0)
        {
          a=8;
        }
          if(ligne3[1]==0 && ligne3[2]==0)
        {
          a=6;
        }
          if(ligne3[0]==0 && ligne3[2]==0)
        {
          a=7;
        }
        if(ligne1[0]==0 && ligne2[0]==0)
        {
          a=6;
        }
          if(ligne3[0]==0 && ligne2[0]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne3[0]==0)
        {
          a=3;
        }
        if(ligne1[1]==0 && ligne2[1]==0)
        {
          a=7;
        }
          if(ligne3[1]==0 && ligne2[1]==0)
        {
          a=1;
        }
          if(ligne1[1]==0 && ligne3[1]==0)
        {
          a=4;
        }
        if(ligne1[2]==0 && ligne2[2]==0)
        {
          a=8;
        }
          if(ligne3[2]==0 && ligne2[2]==0)
        {
          a=2;
        }
          if(ligne1[2]==0 && ligne3[2]==0)
        {
          a=5;
        }
        if(ligne1[0]==0 && ligne2[1]==0)
        {
          a=8;
        }
          if(ligne2[1]==0 && ligne3[2]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne3[2]==0)
        {
          a=4;
        }
        if(ligne1[2]==0 && ligne2[1]==0)
        {
          a=6;
        }
          if(ligne2[1]==0 && ligne3[0]==0)
        {
          a=2;
        }
          if(ligne1[2]==0 && ligne3[0]==0)
        {
          a=4;
        }
        if(ligne1[0]==1 && ligne1[1]==1 && ligne1[2]==2)
        {
          a=2;
        }
          if(ligne1[1]==1 && ligne1[2]==1 && ligne1[0]==2)
        {
          a=0;
        }
          if(ligne1[0]==1 && ligne1[2]==1 && ligne1[1]==2)
        {
          a=1;
        }
        if(ligne2[0]==1 && ligne2[1]==1 && ligne2[2]==2)
        {
          a=5;
        }
          if(ligne2[1]==1 && ligne2[2]==1 && ligne2[0]==2)
        {
          a=3;
        }
          if(ligne2[0]==1 && ligne2[2]==1 && ligne2[1]==2)
        {
          a=4;
        }
        if(ligne3[0]==1 && ligne3[1]==1 && ligne3[2]==2)
        {
          a=8;
        }
          if(ligne3[1]==1 && ligne3[2]==1 && ligne3[0]==2)
        {
          a=6;
        }
          if(ligne3[0]==1 && ligne3[2]==1 && ligne3[1]==2)
        {
          a=7;
        }
        if(ligne1[0]==1 && ligne2[0]==1 && ligne3[0]==2)
        {
          a=6;
        }
          if(ligne3[0]==1 && ligne2[0]==1 && ligne1[0]==2)
        {
          a=0;
        }
          if(ligne1[0]==1 && ligne3[0]==1 && ligne2[0]==2)
        {
          a=3;
        }
        if(ligne1[1]==1 && ligne2[1]==1 && ligne3[1]==2)
        {
          a=7;
        }
          if(ligne3[1]==1 && ligne2[1]==1 && ligne1[1]==2)
        {
          a=1;
        }
          if(ligne1[1]==1 && ligne3[1]==1 && ligne2[1]==2)
        {
          a=4;
        }
        if(ligne1[2]==1 && ligne2[2]==1 && ligne3[2]==2)
        {
          a=8;
        }
          if(ligne3[2]==1 && ligne2[2]==1 && ligne1[2]==2)
        {
          a=2;
        }
          if(ligne1[2]==1 && ligne3[2]==1 && ligne2[2]==2)
        {
          a=5;
        }
        if(ligne1[0]==1 && ligne2[1]==1 && ligne3[2]==2)
        {
          a=8;
        }
          if(ligne2[1]==1 && ligne3[2]==1 && ligne1[0]==2)
        {
          a=0;
        }
          if(ligne1[0]==1 && ligne3[2]==1 && ligne2[1]==2)
        {
          a=4;
        }
        if(ligne1[2]==1 && ligne2[1]==1 && ligne3[0]==2)
        {
          a=6;
        }
          if(ligne2[1]==1 && ligne3[0]==1 && ligne1[2]==2)
        {
          a=2;
        }
          if(ligne1[2]==1 && ligne3[0]==1 && ligne2[1]==2)
        {
          a=4;
        }
        while(cases[a]!=2 || a==100)
        {
          a=int(random(0,8));
        }
      }
      if(tour==4)
      {
        if(ligne1[0]==0 && ligne1[1]==0)
        {
          a=2;
        }
          if(ligne1[1]==0 && ligne1[2]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne1[2]==0)
        {
          a=1;
        }
        if(ligne2[0]==0 && ligne2[1]==0)
        {
          a=5;
        }
          if(ligne2[1]==0 && ligne2[2]==0)
        {
          a=3;
        }
          if(ligne2[0]==0 && ligne2[2]==0)
        {
          a=4;
        }
        if(ligne3[0]==0 && ligne3[1]==0)
        {
          a=8;
        }
          if(ligne3[1]==0 && ligne3[2]==0)
        {
          a=6;
        }
          if(ligne3[0]==0 && ligne3[2]==0)
        {
          a=7;
        }
        if(ligne1[0]==0 && ligne2[0]==0)
        {
          a=6;
        }
          if(ligne3[0]==0 && ligne2[0]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne3[0]==0)
        {
          a=3;
        }
        if(ligne1[1]==0 && ligne2[1]==0)
        {
          a=7;
        }
          if(ligne3[1]==0 && ligne2[1]==0)
        {
          a=1;
        }
          if(ligne1[1]==0 && ligne3[1]==0)
        {
          a=4;
        }
        if(ligne1[2]==0 && ligne2[2]==0)
        {
          a=8;
        }
          if(ligne3[2]==0 && ligne2[2]==0)
        {
          a=2;
        }
          if(ligne1[2]==0 && ligne3[2]==0)
        {
          a=5;
        }
        if(ligne1[0]==0 && ligne2[1]==0)
        {
          a=8;
        }
          if(ligne2[1]==0 && ligne3[2]==0)
        {
          a=0;
        }
          if(ligne1[0]==0 && ligne3[2]==0)
        {
          a=4;
        }
        if(ligne1[2]==0 && ligne2[1]==0)
        {
          a=6;
        }
          if(ligne2[1]==0 && ligne3[0]==0)
        {
          a=2;
        }
          if(ligne1[2]==0 && ligne3[0]==0)
        {
          a=4;
        }
        if(ligne1[0]==1 && ligne1[1]==1 && ligne1[2]==2)
        {
          a=2;
        }
          if(ligne1[1]==1 && ligne1[2]==1 && ligne1[0]==2)
        {
          a=0;
        }
          if(ligne1[0]==1 && ligne1[2]==1 && ligne1[1]==2)
        {
          a=1;
        }
        if(ligne2[0]==1 && ligne2[1]==1 && ligne2[2]==2)
        {
          a=5;
        }
          if(ligne2[1]==1 && ligne2[2]==1 && ligne2[0]==2)
        {
          a=3;
        }
          if(ligne2[0]==1 && ligne2[2]==1 && ligne2[1]==2)
        {
          a=4;
        }
        if(ligne3[0]==1 && ligne3[1]==1 && ligne3[2]==2)
        {
          a=8;
        }
          if(ligne3[1]==1 && ligne3[2]==1 && ligne3[0]==2)
        {
          a=6;
        }
          if(ligne3[0]==1 && ligne3[2]==1 && ligne3[1]==2)
        {
          a=7;
        }
        if(ligne1[0]==1 && ligne2[0]==1 && ligne3[0]==2)
        {
          a=6;
        }
          if(ligne3[0]==1 && ligne2[0]==1 && ligne1[0]==2)
        {
          a=0;
        }
          if(ligne1[0]==1 && ligne3[0]==1 && ligne2[0]==2)
        {
          a=3;
        }
        if(ligne1[1]==1 && ligne2[1]==1 && ligne3[1]==2)
        {
          a=7;
        }
          if(ligne3[1]==1 && ligne2[1]==1 && ligne1[1]==2)
        {
          a=1;
        }
          if(ligne1[1]==1 && ligne3[1]==1 && ligne2[1]==2)
        {
          a=4;
        }
        if(ligne1[2]==1 && ligne2[2]==1 && ligne3[2]==2)
        {
          a=8;
        }
          if(ligne3[2]==1 && ligne2[2]==1 && ligne1[2]==2)
        {
          a=2;
        }
          if(ligne1[2]==1 && ligne3[2]==1 && ligne2[2]==2)
        {
          a=5;
        }
        if(ligne1[0]==1 && ligne2[1]==1 && ligne3[2]==2)
        {
          a=8;
        }
          if(ligne2[1]==1 && ligne3[2]==1 && ligne1[0]==2)
        {
          a=0;
        }
          if(ligne1[0]==1 && ligne3[2]==1 && ligne2[1]==2)
        {
          a=4;
        }
        if(ligne1[2]==1 && ligne2[1]==1 && ligne3[0]==2)
        {
          a=6;
        }
          if(ligne2[1]==1 && ligne3[0]==1 && ligne1[2]==2)
        {
          a=2;
        }
          if(ligne1[2]==1 && ligne3[0]==1 && ligne2[1]==2)
        {
          a=4;
        }
        while(cases[a]!=2 || a==100)
        {
          a=int(random(0,8));
        }
      }
      c=0;
      if(a==0)
      {
        ligne1[0]=1;
        cases[a]=1;
      }
      if(a==1)
      {
        ligne1[1]=1;
        cases[a]=1;
      }
      if(a==2)
      {
        ligne1[2]=1;
        cases[a]=1;
      }
      if(a==3)
      {
        ligne2[0]=1;
        cases[a]=1;
      }
      if(a==4)
      {
        ligne2[1]=1;
        cases[a]=1;
      }
      if(a==5)
      {
        ligne2[2]=1;
        cases[a]=1;
      }
      if(a==6)
      {
        ligne3[0]=1;
        cases[a]=1;
      }
      if(a==7)
      {
        ligne3[1]=1;
        cases[a]=1;
      }
      if(a==8)
      {
        ligne3[2]=1;
        cases[a]=1;
      }
      a=100;
    }
    if(ligne1[0]==1 && ligne2[0]==1 && ligne3[0]==1)
    {
      text("Perdu !",380,50);
    }
    if(ligne1[1]==1 && ligne2[1]==1 && ligne3[1]==1)
    {
      text("Perdu !",380,50);
    }
    if(ligne1[2]==1 && ligne2[2]==1 && ligne3[2]==1)
    {
      text("Perdu !",380,50);
    }
    if(ligne1[0]==1 && ligne1[1]==1 && ligne1[2]==1)
    {
      text("Perdu !",380,50);
    }
    if(ligne2[0]==1 && ligne2[1]==1 && ligne2[2]==1)
    {
      text("Perdu !",380,50);
    }
    if(ligne3[0]==1 && ligne3[1]==1 && ligne3[2]==1)
    {
      text("Perdu !",380,50);
    }
    if(ligne1[0]==1 && ligne2[1]==1 && ligne3[2]==1)
    {
      text("Perdu !",380,50);
    if(ligne1[2]==1 && ligne2[1]==1 && ligne3[0]==1)
    {
      text("Perdu !",380,50);
    }
  }
}
