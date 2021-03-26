float x;
float y;
float vx;
float vy;
float ay;

void setup(){
 size(800,600);
 frameRate(30);
 x = -370;
 y = 30;
 vx = 37/3;
 vy = 10;
 ay = -0.5;
}

void setBackground(){
    background(0);
    translate(400,300);
    scale(1,-1);
    fill(127,0,0);
    rect(-400,0,800,-300);
}

void draw(){
  setBackground();
  fill(0,255,0);
  circle(x,y,60);
  if((x >= 370.1) || (x <= -370.1)){
    vx = -vx; 
  }
  if(y <= 30){
   vy = 10; 
  }
  x += vx;
  y += vy;
  vy += ay;
}
