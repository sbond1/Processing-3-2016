//You are controlling the white boat.  
//Press the left and right arrow keys simultaneously to make your boat go faster.
//If you press one arrow key without the other, your boat will go slower.
//Cross the finish line before the other three boats do, and you win.

float x = 137.5;
float z = x + 62.5;
float A = 137.5;
float y = 137.5;
int a = 2;
float changeX = random(2.2,2.4);
float changeY = random(2.0,2.3);
boolean bb,bc = false;
float px = 137.5;
float pchangeX = 2.09;
boolean rowActive = false;
int gameOver = 0;
float changeZ = random(2.3,2.4);
PFont font;

void setup()
{
  size(1500,750); 
}

void draw()
{
  font = loadFont("AmericanTypewriter-CondensedLight-26.vlw");
  textFont(font, 26);
  textAlign(CENTER,CENTER);
  stroke(0);
  background(15,133,247);
 
  strokeWeight(3);
  //lines of course and lanes
  
  line(1250,650,1250,100);
  line(250,650,250,100);
  line(250,100,1250,100);
  line(250,650,1250,650);
  //line(750,650,750,100);
  line(250,237.5,1250,237.5);//lane 1
  line(250,375,1250,375);//lane 2
  line(250,512.5,1250,512.5);//lane 3
  rowPlayer1();
  rowComputer1();
  rowComputer2();
  rowComputer3();
 
 
  
  
  if (bb && bc)
  {
    bb = false;
    bc = false;
    pchangeX = 6.5;
  }
  
  else if (bb)
  {
    pchangeX = 1;
    
  }
  
  else if (bc)
  {
    pchangeX = 1;
    
  }
  
  else
  {
    pchangeX = 2;
  }
  
  fill(255);
  textSize(26);
  
  
  text("FINISH",1350,375);
  
  if (x > width-300)
  {
    changeX = 0;
    
    
  }
  
  if (A > width-300)
  {
    changeZ = 0;
  }
  
  if (y > width-300)
  {
    changeY = 0;
  }
  
  if (px > width-300)
  {
    pchangeX = 0;
    
  }
  
  if (pchangeX < 1 && changeX > 1 && changeY > 1 && changeZ > 1)
  {
    background(0);
    text("YOU WIN", width/2, height/2);
    delay(1000);
    gameOver = 1;
    
  }
  
  else if (pchangeX > 1 && (changeX < 1 || changeY < 1 || changeZ < 1))
  {
    background(0);
    text("YOU LOSE", width/2,height/2);
    delay(1000);
    
  }

//if (px > width/2)
//{
//  text("HALFWAY THERE", width/2,100);
//}
 
  
  
    
}
 

void rowPlayer1()
{
  px = px + pchangeX;
  player1boat();
}
void rowComputer1()
{
   A = A + changeZ;
  
  computerboat1();
}
void rowComputer2()
{
  y = y + changeY;
  computerboat2();
}
void rowComputer3()
{
  x = x + changeX;
  computerboat3();
}

void gameOver()
{
  if (pchangeX < 1 && changeX > 1)
  {
    background(0);
   
    text("YOU WIN", width/2, height/2);
    delay(500);
    gameOver = 1;
  }
  
  else if (pchangeX > 1 && changeX <1)
  {
    background(0);
   
    
    text("YOU LOSE", width/2,height/2);
    delay(500);
    gameOver = 1;
  }
}


void computerboat1()
{
  stroke(#FC8E1F);
  fill(#FC8E1F);
  rect(x-87.5,418.75,150,50);
  triangle(x-87.5,418.75,x-137.5,443.75,x-87.5,468.75);
  triangle(x+62.5,468.75,x+62.5,418.75,x+112.5,443.75);
  oar4A();
  oar3A();
  oar2A();
  oarBowA();
}

void oar4A()
{
  line(x-72.5,418.75,x-72.5,378.75);
  rect(x-72.5,378.75,5,10);
}

void oar3A()
{
  line(x-42.5,468.75,x-42.5,508.75);
  rect(x-42.5,498.75,5,10);
}

void oar2A()
{
  line(x-12.5,418.75,x-12.5,378.75);
  rect(x-12.5,378.75,5,10);
}

void oarBowA()
{
  line(x+17.5,468.75,x+17.5,508.75);
  rect(x+17.5,498.75,5,10);
}


void keyPressed()
{
  
  
  if (keyCode == LEFT)
  {
    bb = true;
  }
  if (keyCode == RIGHT)
  {
    bc = true;
  }


}

void keyReleased()
{
  //rowActive = false;
  
  if (keyCode == LEFT)
  {
    bb = false;
  }
  if (keyCode == RIGHT)
  {
    bc = false;
  }
}

void player1boat()
{
  fill(255);
  stroke(255);
  rect(px-87.5,556.25,150,50);
  triangle(px-87.5,556.25,px-137.5,581.25,px-87.5,606.25);
  triangle(px+62.5,606.25,px+62.5,556.25,px+112.5,581.25);
  strokeWeight(2);
  oar4();
  oar3();
  oar2();
  oarBow();
}

void oar4()
{
  
  line(px-72.5,556.25,px-72.5,516.25);
  rect(px-72.5,516.25,5,10);
}
void oar3()
{
  line(px-42.5,606.25,px-42.5,646.25);
  rect(px-42.5,636.25,5,10);
}

void oar2()
{
  line(px-12.5,556.25,px-12.5,516.25);
  rect(px-12.5,516.25,5,10);
}

void oarBow()
{
  line(px+17.5,606.25,px+17.5,646.25);
  rect(px+17.5,636.25,5,10);
}

void computerboat2()
{
  fill(#5D3BC4);
  stroke(#5D3BC4);
  rect(A-87.5,281.25,150,50);
  triangle(A-87.5,281.25,A-137.5,306.25,A-87.5,331.25);
  triangle(A+62.5,331.25,A+62.5,281.25,A+112.5,306.25);
  oar4B();
  oar3B();
  oar2B();
  oarBowB();
}

void oar4B()
{
  line(A-72.5,281.25,A-72.5,241.25);
  rect(A-72.5,241.25,5,10);
}

void oar3B()
{
  line(A-42.5,331.25,A-42.5,371.25);
  rect(A-42.5,361.25,5,10);
}

void oar2B()
{
  line(A-12.5,281.25,A-12.5,241.25);
  rect(A-12.5,241.25,5,10);
}

void oarBowB()
{
  line(A+17.5,331.25,A+17.5,371.25);
  rect(A+17.5,361.25,5,10);
}

void computerboat3()
{
  fill(#D12FEA);
  stroke(#D12FEA);
  rect(y-87.5,143.75,150,50);
  triangle(y-87.5,143.75,y-137.5,168.75,y-87.5,193.75);
  triangle(y+62.5,193.75,y+62.5,143.75,y+112.5,168.75);
  oar4C();
  oar3C();
  oar2C();
  oarBowC();
}

void oar4C()
{
   line(y-72.5,143.75,y-72.5,103.75);
   rect(y-72.5,103.75,5,10);
}

void oar3C()
{
  line(y-42.5,193.75,y-42.5,233.75);
  rect(y-42.5,223.75,5,10);
}

void oar2C()
{
  line(y-12.5,143.75,y-12.5,103.75);
  rect(y-12.5,103.75,5,10);
}

void oarBowC()
{
  line(y+17.5,193.75,y+17.5,233.75);
  rect(y+17.5,223.75,5,10);
}