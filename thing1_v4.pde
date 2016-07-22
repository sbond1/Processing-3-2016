float Y = 200.0;
float X = 200.0;
int speedX = 5;



void setup()
{ 
  size(400,400);
  strokeWeight(3);
  stroke(108,0,198);
}




void draw()
{
  int x = mouseX;
  int y = mouseY;
 

  background(204,x,y);
  
  strokeWeight(1);
  
  line(width/2,0,width/2,400);
  line(0,height/2,width,height/2);
  
  strokeWeight(3);
  
  fill(255);
  rectMode(CENTER);
  rect(x,y,90,90); //head

  ellipseMode(CORNER);
  ellipse(x-35,y-35,20,20); //left eye
  ellipse(x+15,y-35,20,20); //right eye

  stroke(0);
  fill(0);
  ellipseMode(CENTER);
  ellipse(x-25,y-25,7,7);//left pupil
  ellipse(x+25,y-25,7,7);//right pupil

  stroke(108,0,198);
  fill(108,0,198);
  line(x,y+45,x,y+120); //body
  line(x,y+120,x+45,y+150); //right leg
  line(x,y+120,x-45,y+150); //left leg

  ellipseMode(CENTER);
  arc(x,y+10,40,40,0,PI); //mouth

  line(x-20,y+10,x+20,y+10); //top of mouth

  rectMode(CORNER);
  rect(x+45,y+150,45,20); //right foot
  rect(x-90,y+150,45,20); //left foot

  line(x,y+82.5,x+45,y+65); //right arm
  line(x,y+82.5,x-45,y+65); //left arm

  beginShape(); //right ear
  vertex(x+45,y-15);
  vertex(x+57,y-15);
  vertex(x+57,y-5);
  vertex(x+45,y+10);
  endShape();

  beginShape(); //left ear
  vertex(x-45,y-15);
  vertex(x-57,y-15);
  vertex(x-57,y-5);
  vertex(x-45,y+10);
  endShape();
   
  if (Y <= 30)
  {
    speedX = speedX * -1;
  }
  
  if (Y >= height-30)
  {
    speedX = speedX * -1;
  }
  
  Y = Y + speedX;
  ellipse(X,Y,60,60); //ball
  if (mouseX >= X-60  && mouseX <= X+60 )
  {
    background(255);
    text("Game Over", 200,200);
  }
  
  
  
}