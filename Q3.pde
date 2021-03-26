float cx;
float cy;
float x;
float y;
float w1;
float w2;

void setup(){
  size(800,600);
  frameRate(60);
  w1 = 0;
  w2 = 0;
}

void setBackground(){
    background(153);
    translate(400,300);
    scale(1,-1);
    stroke(255,0,0);
    strokeWeight(1);
    fill(153);
    circle(0,0,200);
}

void draw(){
  setBackground();
  stroke(0,0,255);
  strokeWeight(2);
  cx = 75*cos(w1);
  cy = 75*sin(w1);
  circle(cx,cy,50);
  
  translate(cx,cy);
  stroke(0,255,0);
  strokeWeight(8);
  x = 25*cos(-w2);
  y = 25*sin(-w2);
  point(x,y); 
  
  w1 += PI/120;
  w2 += PI/40;
}
