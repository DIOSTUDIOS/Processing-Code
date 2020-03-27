size(300, 300);
noFill();
stroke(255);
line(50, 220, 230, 260);
line(70, 40, 250, 80);
stroke(0);
int cx1 = 230;
int cy1 = 260;
bezier(50, 220, (cx1+=1), (cy1+=1), 70, 40, 250, 80);
