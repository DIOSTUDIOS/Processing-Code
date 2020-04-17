DMachine DM;

// determines the main artboard size (radius)
float ArtboardRadius = 250;

// Animation for starting circles
float Radius1st = floor(random(ArtboardRadius * 0.2, ArtboardRadius * 0.5));
float Radius2nd = floor(random(ArtboardRadius * 0.2, ArtboardRadius * 0.5));
float speedModif1st = floor(random(3)+1);
float speedModif2nd = floor(random(3)+1);

// arm lengths
float armlength = (ArtboardRadius * 1.15) + floor(random(-75, 75));

// beginning location of drawing arm circles and it's speed
float n1, n2;
float nShift = radians(floor(random(45, 135)));
float nSpeed = 0.0005;

// a new layer for the drawing machine
PGraphics fDM;

void setup() {
  size(700, 700);
  smooth();
  background(0);
  strokeCap(CORNER);
  
  n1 = radians(180);
  n2 = n1 + nShift;

  DM = new DMachine();
  fDM = createGraphics(width, height);
}

void draw() {
  background(0);

  // draw Artboard
  noFill();
  stroke(60);
  strokeWeight(1);
  ellipse(width/2, height/2, ArtboardRadius*2, ArtboardRadius*2);

  // draw Initial Points (Begin Points)
  DM.draw1stBeginPoint(n1, Radius1st, speedModif1st);
  DM.draw2ndBeginPoint(n2, Radius2nd, speedModif2nd);
  DM.CalculateEndPoint(armlength);

  // draw line on a new layer
  fDM.beginDraw();
  fDM.fill(255, 128);
  fDM.noStroke();
  fDM.ellipse(DM.tX, DM.tY, 2, 2);   
  fDM.endDraw();
  image(fDM, 0, 0);
}


//////////////////


class DMachine {
  float MAxx1, MAyy1;
  float MAxx2, MAyy2;
  float tX, tY;

  float anim;

  DMachine() {
    anim = 0;
  }

  void draw1stBeginPoint(float n1_, float Radius1st_, float speedModif1st_) {
    float MAx1, MAy1;
    MAx1 = width/2 + ArtboardRadius * cos(n1);
    MAy1 = height/2 + ArtboardRadius * -sin(n1);
    stroke(60);
    strokeWeight(1);
    fill(0);
    ellipse(MAx1, MAy1, Radius1st, Radius1st);

    // resets the angle
    n1 -= nSpeed;
    if (degrees(n1) < 0) {
      n1 = radians(360);
    }

    noStroke();
    fill(255);
    MAxx1 = MAx1 + cos(anim * speedModif1st) * Radius1st/2;
    MAyy1 = MAy1 + sin(anim * speedModif1st) * Radius1st/2;
    anim += 0.025;
    fill(60);
    ellipse(MAxx1, MAyy1, 5, 5);
  }


  void draw2ndBeginPoint(float n2_, float Radius2nd_, float speedModif2nd) {
    float MAx2 = width/2 + ArtboardRadius * cos(n2);
    float MAy2 = height/2 + ArtboardRadius * -sin(n2);
    stroke(60);
    strokeWeight(1);
    fill(0);
    ellipse(MAx2, MAy2, Radius2nd, Radius2nd);

    // resets the angle
    n2 -= nSpeed;
    if (degrees(n2) < 0) {
      n2 = radians(360);
    }

    noStroke();
    fill(255);
    MAxx2 = MAx2 + sin(anim * speedModif2nd) * Radius2nd/2;
    MAyy2 = MAy2 + cos(anim * speedModif2nd) * Radius2nd/2;
    anim += 0.025;
    fill(60);
    ellipse(MAxx2, MAyy2, 5, 5);
  }

  void CalculateEndPoint(float armlength_) {
    // "crazy" math stuff here
    // only look if you dare!

    stroke(60);
    fill(60);

    // distance between the two main points
    float a = dist(MAxx1, MAyy1, MAxx2, MAyy2);
    //line(MAxx1, MAyy1, MAxx2, MAyy2);

    // the mid-point
    float a2X = lerp(MAxx1, MAxx2, 0.5);
    float a2Y = lerp(MAyy1, MAyy2, 0.5);
    //ellipse(a2X, a2Y, 5, 5);

    // The armlength "compensator" aka the triangle height calculator
    float fD1 = abs(sq(armlength) - sq(a/2));
    float fD2 = sqrt(fD1);

    // "compensation" angle 
    float alpha = asin(abs(MAyy1 - MAyy2) / a);

    if (MAyy1 - MAyy2 < 0 && MAxx1 - MAxx2 < 0) {
      // works in between "180-270"
      // a is \ angle
      tX = a2X + fD2 * cos(-PI/2+alpha);
      tY = a2Y + fD2 * sin(-PI/2+alpha);
    } else if (MAyy1 - MAyy2 < 0 && MAxx1 - MAxx2 > 0) {
      // works in between 90-180
      // a is / angle
      tX = a2X + fD2 * cos(PI/2-alpha);
      tY = a2Y + fD2 * sin(PI/2-alpha);
    } else if (MAyy1 - MAyy2 > 0 && MAxx1 - MAxx2 > 0) {
      // works in between 0-90
      // a is \ angle
      tX = a2X + fD2 * cos(PI/2+alpha);
      tY = a2Y + fD2 * sin(PI/2+alpha);
    } else if (MAyy1 - MAyy2 > 0 && MAxx1 - MAxx2 < 0) {
      // works in between 270-360
      // a is / angle
      tX = a2X + fD2 * cos(-PI/2-alpha);
      tY = a2Y + fD2 * sin(-PI/2-alpha);
    }

    // final lines
    line(MAxx1, MAyy1, tX, tY);
    line(MAxx2, MAyy2, tX, tY);
  }
}
