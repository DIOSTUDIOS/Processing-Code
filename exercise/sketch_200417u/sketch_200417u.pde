int densityNum = 100; // 雪花的密度
float[] x= new  float[densityNum];
float[] y= new  float[densityNum];
// 雪花随机速度数组
float[] speed = new float[densityNum];
float[] pointZ = new float[densityNum];
// 雪花大小数组
float[] size = new float[densityNum];
float colorNumR = 0f;
float colorNumG = 0f;
float colorNumB = 0f;

void setup()
{
  //fullScreen(P3D);
  size(960,540,P3D);
  background(0);
  stroke(255);
  strokeWeight(5);
  //colorMode(HSB,255);
  int i = 0;
  while (i < densityNum) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    speed[i] = random(1, 5);
    pointZ[i] = random(-50, 50);
    size[i] = random(4,7);
    i = i + 1;
  }
}
void draw() {
  colorNumR += 0.1;
  colorNumG += 0.1;
  colorNumB += 0.1;
 // println(noise(colorNum));
  background(0);
  int i = 0;
  while (i < densityNum) {
    println(255-10*noise(colorNumR*100));
    stroke(255-10*noise(colorNumR)*20,255-10*noise(colorNumG)*20,255-10*noise(colorNumB)*20);
    strokeWeight(size[i]);
    point(x[i], y[i], pointZ[i]);
 
    y[i] = y[i] + speed[i];
    if (y[i] > height) {
      y[i] = 0;
    }
    i = i + 1;
  }
}
