/* t: time */
float t = 0;
/* dt: delta t */
float dt = 0.01;
/* ns: noise scale */
float ns = 0.02;
/* rotx, roty: rotation angles */
float rotx = 0;
float roty = 0;
/* s: scale factor */
float s = 1;

/* main routines */

void setup()
{
  size(960 ,540, P3D);
  smooth();
  
  noFill();
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  
  //scale(s);
  //rotateX(roty);
  //rotateY(rotx);
  
  int N = 50;
  float R = 80;
  
  for(int i = 0; i < N; i++)
  {
    float r = -R*log(float(N-i)/N);
    
    strokeWeight(0.005*r);
    stroke(255);
      
    //noFill();
      
    float v = 1*(float(N-i)/N);
    
    rotateX(v*t);
    rotateY(v*t);
    box(r);
    rotateY(-v*t);
    rotateX(-v*t);
    
  }
  
  t += dt;
}

//void mouseDragged()
//{
//  rotx += (mouseX - pmouseX) * 0.01 / pow(s, 2);
//  roty -= (mouseY - pmouseY) * 0.01 / pow(s, 2);
//}

//void mouseWheel(MouseEvent e)
//{
//  s -= e.getAmount() / 10;
//}
