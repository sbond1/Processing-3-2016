size(600,600);
background(212,251,252);

strokeWeight(3);

stroke(108,0,198);

int x = 300;
int y = 300;


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