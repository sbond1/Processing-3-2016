float x = 137.5;
float y = 1;
int a = 2;
int changeX = 2;
int changeY = 2;
void setup()
{
  size(1500,750);
  
  //text("FINISH",1250,650);
  
  
}
void draw()
{
background(15,133,247);
 
  strokeWeight(3);
  //lines of course and lanes
  
  line(1250,650,1250,100);
  line(250,650,250,100);
  line(250,100,1250,100);
  line(250,650,1250,650);
  line(250,237.5,1250,237.5);//lane 1
  line(250,375,1250,375);//lane 2
  line(250,512.5,1250,512.5);//lane 3
  player1boat();
  x = x + changeX;
}

void keyPressed()
{
  if (keyCode == LEFT)
  {
    
  if (keyCode == RIGHT)
  {
    changeX = 5;
  }
  else
  {
    changeX = 2;
  }
}
}
void player1boat()
{
  
  stroke(255);
  rect(x-87.5,556.25,150,50);
  triangle(x-87.5,556.25,x-137.5,581.25,x-87.5,606.25);
  triangle(x+62.5,606.25,x+62.5,556.25,x+112.5,581.25);
  strokeWeight(2);
  oar4();
  oar3();
  oar2();
  oarbow();
}

void oar4()
{
  
  line(x-72.5,556.25,x-72.5,516.25);
  rect(x-72.5,516.25,5,10);
}
void oar3()
{
  line(x-42.5,606.25,x-42.5,646.25);
  rect(x-42.5,636.25,5,10);
}

void oar2()
{
  line(x-12.5,556.25,x-12.5,516.25);
  rect(x-12.5,516.25,5,10);
}

void oarbow()
{
  line(x+17.5,606.25,x+17.5,646.25);
  rect(x+17.5,636.25,5,10);
}