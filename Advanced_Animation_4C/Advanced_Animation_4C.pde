//Cheng Cheng 
//Feb 20
//2-1 
 
int spikyX; 
int spikyY; 
int spikyAngle; 
void setup() { //==================== 
  size(800, 600); 
  spikyX=0; 
  spikyY=0; 
  spikyAngle=0; 
   
} //end setup ======================== 
void draw() { //======================== 
  //background(200); 
  spiky(spikyX, spikyY,spikyAngle); 
  spikyX+=12; 
  spikyY+=8; 
  spikyAngle+=8; 
  if (spikyX > 850) 
  spikyX = -200; 
  if (spikyY >650) 
  spikyY =-200; 
} // end Draw ========================== 
 
//          Parameters 
void spiky(int x, int y, int angle) { //============================ 
  pushMatrix();     // begin transformations 
  translate(x, y); 
rotate(radians(angle)); 
 
 
  //triangles around circles (spikes) 
  strokeWeight(5); 
  fill(0); 
  // Top 
  triangle(-15, -75, 15, -75, 0, -145); 
  // Bottom 
  triangle(-15, 75, 15, 75, 0, 165); 
  // Right 
  triangle(75, -15, 75, 15, 105, 0); 
  // Left 
  triangle(-75, -15, -75, 15, -105, 0); 
  // Diagonals 
  triangle(40, -65, 65, -40, 80, -80);   // Top-Right 
  triangle(-40, -65, -65, -40, -80, -80); // Top-Left 
  triangle(40, 65, 65, 40, 80, 80);     // Bottom-Right 
  triangle(-40, 65, -65, 40, -80, 80);   // Bottom-Left 
   //circles 
  fill(0); 
  circle(0, 0, 150); 
  fill(249, 215, 28, 100); 
  ellipse(0, 0, 100, 100); 
  popMatrix(); //end transformations  
} //end Compass ======================== 
 
