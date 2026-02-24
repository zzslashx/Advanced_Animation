//Cheng Cheng
//Programming 11 2-1
//Feb 20
int x, vx, score;
int y, vy,timeCount;
void setup() {
  size(800, 600);
  pixelDensity(1);
  x = 50;
  y = 300;
  vx=4;
  vy=8;
  strokeWeight(5);
}
void draw() {
  background(200);
  
  
  if (timeCount/60>=60){
  vx=0;
  vy=0;
  textAlign(CENTER,CENTER);
  text("In one minute you got " + score + " points",400,300);
  
  }
  else{
  timeCount++;
   textSize(100);
  text(score, 300, 300);
  textSize(25);
  text("note, you gain 1 point when you", 300, 400);
  text("get lucky and the ball goes top-speed (15)", 300, 430);
  text(abs(vx)+" vx speed", 50, 50);
  text(abs(vy)+" vy speed", 50, 80);
  text(timeCount/60 + "s is the time you've spent",200,100);
  fill(int(random(1, 155)), int(random(1, 155)), int(random(1, 155)));
  ellipse(x, y, 100, 100);
  x+=vx;
  y+=vy;
  if (x >= 750 || y>=550) {
    vx=-int(random(1, 15));
    vy=-int(random(1, 15));
  }
  if (x<=50 || y<=50) {
    vx=int(random(1, 16));
    vy=int(random(1, 16));
  }
  if (vx==15 || vy==15) {
    score+=1;
    vx=int(random(1, 16));
    vy=int(random(1, 16));
  }
  if (y>700)
    y=50;

  if (x<-100)
    x=50;
  }
 
  
}
