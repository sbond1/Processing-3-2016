float y = 250; //x-position
float x = 250.0;
float a = 250.0;
float b = 250.0;
int speedX = 10; // speed of circle
int speedY = -10;
void setup()
{
  size(500,500);
  y = height/2;
  

}

void draw()
{
  
  noStroke();
  
  background(0);
  fill (255,0,0);
  if (x <= 30 || y <= 30)
  {
    speedX = speedX * -1;
  }
  if (x >=width-30 || y >= height-30)
  {
    speedX = speedX * -1;
  }
  
  if (x >= width/2 || y >= height/2)
  {
    fill(0,255,0);
  }
  
  y = y + speedX;
  x = x + speedX;
  
  ellipse(x, y, 60, 60);
  
  fill (255,0,0);
  if (a >= 30 || b <= 30)
  {
    speedY = speedY * -1;
  }
  
  if (a <= width-30 || b >= height-30)
  {
    speedY = speedY * -1;
  }
  
  
  if (a <= width/2 || b >= height/2)
  {
    fill(0,255,0);
  }
  
  a = a - speedY;
  b = b + speedY;
  
  ellipse(b, a, 60, 60);
}