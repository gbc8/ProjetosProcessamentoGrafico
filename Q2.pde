float x1,x2,x3;
float y1,y2,y3;
float w1;
float w2;

void setup(){
  background(255);
  size(800,600);
  frameRate(60);
  w1 = 0;
  w2 = 0;
  x1 = 0;
  y1 = 0;
  x2 = 0;
  y2 = -40; //2UC -> size 2
  x3 = 0;
  y3 = -100;//2UC+3UC -> size 3
}

void setBackground(){
    background(0,0,200);
    translate(400,300);
    scale(1,-1);
    rotate(-PI/2);
}

void draw(){
  setBackground();
  stroke(255);
  strokeWeight(10);
  point(x1,y1);
  point(x2,y2);
  point(x3,y3);
  stroke(0);
  strokeWeight(6);
  x2 = 40*cos(w1);
  y2 = 40*sin(w1);
  x3 = 100*cos(w2);
  y3 = 100*sin(w2);
  line(x1,y1,x2,y2);
  line(x2,y2,x3,y3);
  if(w1 < PI/8) w1 += PI/240*PI/8;
  if(w2 < PI/2.65) w2 += PI/240*PI/2.65;
}
