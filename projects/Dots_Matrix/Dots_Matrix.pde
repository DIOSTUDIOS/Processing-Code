// X-axis 32 rects
int cols = 32;
// Y-axis 16 rects
int rows = 16;
// the length of rect's sides
int side = 20;

void setup()
{
  // width  = cols*side+side*2
  // height = rows*side+side*2
  size(680, 360);
  background(255);
  smooth();
  
  stroke(0);
  strokeWeight(1);
  
  noFill();
  
  show();
  
  println(pixelWidth, pixelHeight);
}

void draw()
{

}

void show()
{
  // draw 32*16 rects
  for(int i=0; i<cols; i++)
  {
    for(int j=0; j<rows; j++)
    {
      rect((i*side+side), (j*side+side), side, side);
    }
  }
}

void markAll()
{
  // draw 32*16 rects
  for(int i=0; i<cols; i++)
  {
    for(int j=0; j<rows; j++)
    {
      fill(255, 0, 0);
      rect((i*side+side), (j*side+side), side, side);
    }
  }
}

void clearAll()
{
  // draw 32*16 rects
  for(int i=0; i<cols; i++)
  {
    for(int j=0; j<rows; j++)
    {
      fill(255, 255, 255);
      rect((i*side+side), (j*side+side), side, side);
    }
  }
}

int coordX = 0;
int coordY = 0;

int[] binary = new int[(cols*rows)];
int index = 0;

void mousePressed()
{
  if(mouseX>=side && mouseX<=((cols+1)*side) && mouseY>=side && mouseY<=((rows+1)*side))
  {
    index = (ceil(mouseY/side)-1)*cols+ceil(mouseX/side)-1;
    // mark:make the rect's color be red
    if(mouseButton == LEFT)
    {
      coordX = ceil(mouseX/side)*side;
      coordY = ceil(mouseY/side)*side;
  
      fill(255, 0, 0);
      rect(coordX, coordY, side, side);
      
      binary[index] = 1;
    }
    
    // dis-mark:make the rect's color be white
    if(mouseButton == RIGHT)
    {
      coordX = ceil(mouseX/side)*side;
      coordY = ceil(mouseY/side)*side;
      
      fill(255, 255, 255);
      rect(coordX, coordY, side, side);
      
      binary[index] = 0;
    }
  }
  else
  {
  
  }
}

void keyPressed()
{
  // mark all
  if(key == 'm' || key == 'M')
  {
    markAll();
  }
  
  // clear all
  if(key == 'c' || key == 'C')
  {
    clearAll();
  }
  
  // generate HEX code
  if(key == 'b' || key == 'B')
  {
    showBinaryCode();
  }
  
  if(key == 'h' || key == 'H')
  {
    showHexCode();
  }
}

PrintWriter binaryFile;

void showBinaryCode()
{
  binaryFile = createWriter("binaryFile.txt");
  
  for(int n=1; n<=(cols*rows); n++)
  {
    if(n%cols == 0)
      binaryFile.println(binary[n-1]);
    else
      binaryFile.print(binary[n-1]);
  }
  
  binaryFile.flush();
  binaryFile.close();
}

void showHexCode()
{
  //printArray(binary);
  print(binary[0]);
}

String transform(String binaryStr)
{
  String value = "";
  
  if(binaryStr == "0000")
    value = "0";
  
  if(binaryStr == "0001")
    value = "1";
  
  if(binaryStr == "0010")
    value = "2";
  
  if(binaryStr == "0011")
    value = "3";
    
  if(binaryStr == "0100")
    value = "4";
    
  if(binaryStr == "0101")
    value = "5";
  
  if(binaryStr == "0110")
    value = "6";
  
  if(binaryStr == "0111")
    value = "7";
  
  if(binaryStr == "1000")
    value = "8";
    
  if(binaryStr == "1001")
    value = "9";
    
  if(binaryStr == "1010")
    value = "A";
  
  if(binaryStr == "1011")
    value = "B";
  
  if(binaryStr == "1100")
    value = "C";
  
  if(binaryStr == "1101")
    value = "D";
    
  if(binaryStr == "1110")
    value = "E";
    
  if(binaryStr == "1111")
    value = "F";
  
  return value;
}
