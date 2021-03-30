float r,px;
float x;
float y;
float w;
void setup(){
  background(255);
  size(800,600);
  frameRate(60);
  w = 0;
  x = -20;
  y = 0;
  r = -20;
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
  w = 0;
  x = -20;
  y = 0;
  r = -20;
  px = 0;
}

void draw(){
  setBackground();
  stroke(0,128,0);
  strokeWeight(10);
  point(x,y);
  if((y > 0 && r*sin(w) < 0) ||(y < 0 && r*sin(w) > 0) ){
    if(y > 0) px -= r;
    else px += r;
    r *= 2;
  }
  x = px + r*cos(w);
  y = r*sin(w);
  w += PI/200;
  if(y < -300){
    clear();
  }
}
