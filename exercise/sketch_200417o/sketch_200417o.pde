// infinite?...  maybe not, but certainly a big number ...
// a random pattern generator based on the double-rod pendulum here:
// http:http://en.wikipedia.org/wiki/Chaos_theory
// http://en.wikipedia.org/wiki/Double_pendulum
// sin(), cos(), moire


Generator g;
int h;
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  h = 0;
  g = new Generator(h);
  background(0);
  g.run();
}

void draw() {
  if (frameCount % 100 == 0) {
    background(0);
    g = new Generator(h);
    g.run();
    h += 15;
    if (h >= 360) h = (h+1) % 360;
  }
}


class Generator {
  PVector conPt1, conPt2, conPt3, conPt4;
  float x, y, ang1, ang2, ang3, ang4;
  float incr1, incr2, incr3, incr4;
  float rad1, rad2, rad3, rad4;
  color c;

  Generator(int h) {
    ellipseMode(RADIUS);
    noStroke();
    c = color(h, 100, 100, 80);
    fill(c);
    x = width/2; 
    y = height/2;
    rad1 =  random (100, 150);
    rad2 =  random(50, 150);
    rad3 =  random(50, 150);
    rad4 =  random(50, 150);
    // connection point
    // these don't need to be vectors
    conPt1 = new PVector();
    conPt2 = new PVector();
    conPt3 = new PVector();
    conPt4 = new PVector();
    ang1 = random(0, 359);
    ang2 = random(0, 359);
    ang3 = random(0, 359);
    ang4 = random(0, 359);
    incr1 = random( -1, 1);
    incr2 = random( -1, 1);
    incr3 = random(-1, 1);
    incr4 = random(-1, 1);
  }

  void update() {

    conPt1.x = x + cos(radians(ang1))*rad1;
    conPt1.y = y + sin(radians(ang1))*rad1;
    ang1 += incr1;

    conPt2.x = conPt1.x + cos(radians(ang2))*rad2;
    conPt2.y = conPt1.y + sin(radians(ang2))*rad2;
    ang2 += incr2;

    conPt3.x = conPt1.x + cos(radians(ang3))*rad3;
    conPt3.y = conPt1.y + sin(radians(ang3))*rad3;
    ang3 += incr3;


    conPt4.x = conPt1.x + cos(radians(ang4))*rad4;
    conPt4.y = conPt1.y + sin(radians(ang4))*rad4;
    ang4 += incr4;
  }

  void display() {

    ellipse(conPt2.x, conPt2.y, 1, 1);
    ellipse(conPt3.x, conPt3.y, 1, 1);
    ellipse(conPt4.x, conPt4.y, 1, 1);
  }

  void run() {
    for (int i = 0; i < 40000; i++) {
      update();
      display();
    }
  }
}
