float t = 0.0;

void setup() {
  size(960, 540, P3D);
  background(0);
  smooth();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  
  t +=1.0/60.0;
  noStroke();
  
  ambientLight(75, 75, 75);
  //directionalLight(155, 155, 155, 0, 1, 0);
  pointLight(255, 255, 255, 0, 50, 50);
  //normalMaterial();
  //ambientMaterial(255, 255, 0);
  pointLight(255, 255, 255, mouseX, mouseY, 200);
  //specularMaterial(255, 255, 0);
  scale(3);
  push();
  rotateX(t*3);
  rotateY(t*3);
  rotateZ(t*3);
  box(50);
  
  //sphere(50)
  
  push();
  rotateX(PI/4);
  box(50);
  pop();
  
  push();
  rotateY(PI/4);
  box(50);
  pop();
  
  push();
  rotateZ(PI/4);
  box(50);
  pop();
  pop();
  
  ambientLight(255, 255, 255);
  //ambientMaterial(150, 150, 255);
  box(1000);
}
