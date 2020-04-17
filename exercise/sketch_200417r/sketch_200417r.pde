float s = 8;

void setup() {
  size(640, 640);
  strokeJoin(ROUND);
  stroke(20);
  strokeWeight(4);
  noFill();
}

void draw() {
  background(255);
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=20) {
    pushMatrix();
    translate(0, 0);
    rotate(radians(i));
    beginShape();
    for (float q = 0; q <= 20; q+=0.5) {
      float l = (sin(radians(q*9+frameCount))*(5+sin(radians(q*9))*(q*3)));
      vertex(sin(radians(0))*(10+q*s)+l, (10+q*s)+10);
    }
    for (float q = 20; q >= 0; q-=0.5) {
      float l = (sin(radians(q*9+frameCount))*(5+sin(radians(q*9))*(q*3)));
      vertex(sin(radians(0))*(10+q*s)-l, (10+q*s)+10);
    }
    endShape(CLOSE);
    popMatrix();
  }
}
