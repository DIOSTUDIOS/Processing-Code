//inspiration: https://www.desmos.com/calculator/9pr2shve2o
int a = 1;
void setup(){
  size(800,800);
}

void draw(){
  a = int(map(mouseX,0,width,1,31));
  background(0);
  loadPixels();
  for (int xpos = 0; xpos < width; xpos++){
    for (int ypos = 0; ypos < height; ypos++){
      float x = map(xpos,0,width,-2.2,2.2);
      float y = map(ypos,height,0,-2.2,2.2);
      float p = 1;
      for (int n = 1; n <= a; n++){
        p *= (1 - pow((x - cos(n * TWO_PI / a)),2) - pow((y - sin(n * TWO_PI / a)),2));
      }
      if (p > 0){
        pixels[ypos * width + xpos] = color(0);
      } else {
        pixels[ypos * width + xpos] = color(255);
      }
    }
  }
  updatePixels();
  //saveFrame("./data/a####.png");
  //println(a);
  //a++;

}
