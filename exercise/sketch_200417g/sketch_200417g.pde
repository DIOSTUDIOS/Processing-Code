void setup() {
  size(640, 640);
  noStroke();
  fill(234, 46, 73);
}

void draw() {
  background(51, 55, 69);
  translate(width/2, height/2);
  // The amount of layers
  for (int j = 20; j < 120; j+=20) {
    float h = j*2+5;
    // The amount of shapes per layer
    for (int q = 0; q < 360; q+=30) {
      float x2 = sin(radians(q+h))*j;
      float y2 = cos(radians(q+h))*j;
      float d = map(dist(x2, y2, 0, 0), 0, 120, 0, 360);
      pushMatrix();
      translate(x2, y2);
      scale(map(j, 0, 180, 0.1, 0.4));
      rotate(radians(-q-h));
      beginShape();
      // The shape, made from openprocessing.org/sketch/162912
      for (int i = 0; i < 180; i+=5) {
        float x = sin(radians(i)) * i/3;
        float angle = sin(radians(i+frameCount*3+d)) * 50;
        vertex(x-angle, i*2);
      }
      for (int i = 180; i > 0; i-=5) {
        float x = sin(radians(i)) * i/3;
        float angle = sin(radians(i+frameCount*3+d)) * 50;
        vertex(-x-angle, i*2);
      }
      endShape(CLOSE);
      popMatrix();
    }
  }
}
