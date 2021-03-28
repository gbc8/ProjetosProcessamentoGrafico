float r1;
float r2;
float x;
float y;
float w1;
float w2;

void setup(){
  background(255);
  size(800,600);
  frameRate(60);
  w1 = 0;
  w2 = 0;
  x = -20;
  y = 0;
  r1 = -20;
  r2 = -20;
}

void setBackground(){
    translate(400,300);
    scale(1,-1);
    stroke(0);
    strokeWeight(1);
    line(-400,0,400,0);
    line(0,300,0,-300);
}

void clear(){
   background(255);
   w1 = 0;
   w2 = 0;
   x = -20;
   y = 0;
   r1 = -20;
   r2 = -20;
}

void draw(){
  setBackground();
  stroke(0,128,0);
  strokeWeight(10);
  point(x,y);
  if((y > 0 && r1*sin(w1) < 0) ||(y < 0 && r1*sin(w1) > 0) ){
    r2 *= 2;
  }
  x = r1*cos(w1);
  y = r1*sin(w1);
  w1 += PI/120;
  r1 += r2/180;
  if(y < -300){
    clear();
  }
}
