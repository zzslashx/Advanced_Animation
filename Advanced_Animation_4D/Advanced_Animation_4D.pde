//Cheng Cheng 
//Programming 11 2-1 
//Feb 20 
int x,vx,counter; 
int y, vy; 
void setup() { 
size(800, 600); 
x = 50; 
y = 300; 
vx=4; 
vy=8; 
strokeWeight(5); 
} 
void draw() { 
  counter++;
background(200); 
if (counter%20==0){

fill(int(random(1,155)),int(random(1,155)),int(random(1,155))); 
}
ellipse(x, y, 100, 100); 
x+=vx; 
y+=vy; 
if (x >= 750 || y>=550) { 
vx=-int(random(1, 15)); 
vy=-int(random(1,15)); 
} 
if (x<=50 || y<=50){ 
vx=int(random(1, 15)); 
vy=int(random(1,15)); 
} 
 
}
