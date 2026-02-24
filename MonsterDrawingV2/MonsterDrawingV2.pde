int xCoord, yCoord;
color eyeColor = #73ddce;
void setup() {//===============================
  pixelDensity(1);
  size(600, 600, P2D);
  yCoord = 50;
  xCoord = 550;
} // end setup ===============================
void draw() { //===============================
  noStroke();
  background(255);

  //sky(tried to make gradient glow red)

  fill(255, 0, 0, 5);
  rect(0, 0, 600, 600);
  for (int i=0; i<375; i+=5) {
    noStroke();
    rect(0, 0, 600, i);
  }
  //ocean (tried to make it gradient)

  fill(0, 100, 200, 8);
  noStroke();
  for (int y = 600; y > 330; y -= 5)
    rect(0, y, 600, 600 - y);
  scale(0.5);
  //ocean waves at top.
  scale(2);
  strokeWeight(5);
  stroke(0);

  beginShape();
  for (int i=0; i<600; i++) {

    curveVertex(i+random(1, 50), i);
  }

  stroke(0, 0, 255);
  endShape();
//Ocean Wave
pushMatrix();
 beginShape();
 fill(0,0,255);
  curveVertex(0, 350);
  curveVertex(0, 350);

  for (int i=0; i<650; i+=20) {
    curveVertex(i,350+random(-20.20));
  }

  endShape();

  curveVertex(650, 350);
  curveVertex(650, 350);
popMatrix();
 
  //halo effect
  scale(0.5);
  noStroke();
  fill(255, 0, 0, 2);
  circle(300, 300, 430);
  fill(255, 0, 0, 5);
  circle(300, 300, 360);
  fill(255, 0, 0, 20);
  circle(300, 300, 290);
  fill(255, 0, 0, 35);
  circle(300, 300, 220);
  body(300, 300);
  eyes(280, 280);
  eyes(320, 280);
  noStroke();
  //scale(4);
  //boat(160, 155);
  //scale(0.5);
  //draw bird falling


  if (xCoord > 150) {
    pushMatrix();
    translate(xCoord, yCoord);
    scale(-1, 1);
    deadBird(0, 0);
    popMatrix();
    xCoord -=6.7;
  } else {
    deadBird(xCoord, yCoord);
    yCoord += 100;
  }
}// end draw =================================
void eyes(int x, int y) {
  pushMatrix();
  translate(x, y);

  //Hexagon ish eyes
  fill(255, 0, 0);
  stroke(255, 0, 0);
  beginShape();
  vertex(0, -20);
  vertex(10, -10);
  vertex(10, 10);
  vertex(0, 20);
  vertex(-10, 10);
  vertex(-10, -10);
  vertex(0, -20);
  endShape();
  popMatrix();
}

void body(int x, int y) { //===========================

  pushMatrix();     // begin transformations
  translate(x, y);
  //triangles around circles (spikes)
  //triangles around circles (spikes)
  strokeWeight(5);
  fill(0);
  stroke(255, 0, 0);
  // Top
  triangle(-15, -75, 15, -75, 0, -105);
  // Bottom
  triangle(-15, 75, 15, 75, 0, 105);
  // Right
  triangle(75, -15, 75, 15, 105, 0);
  // Left
  triangle(-75, -15, -75, 15, -105, 0);
  // Diagonals
  triangle(40, -65, 65, -40, 80, -80);   // Top-Right
  triangle(-40, -65, -65, -40, -80, -80); // Top-Left
  triangle(40, 65, 65, 40, 80, 80);     // Bottom-Right
  triangle(-40, 65, -65, 40, -80, 80);   // Bottom-Left
  fill(0);
  stroke(255, 117, 0);
  circle(0, 0, 150);
  fill(249, 215, 28, 100);

  popMatrix(); //end transformations
}// end body ===================================
void boat(int x, int y) {
  // boat body
  fill(150, 75, 0);
  rect(x, y, 80, 20);
  // mast
  stroke(0);
  line(x + 40, y, x + 40, y - 60);
  // sail
  fill(255);
  triangle(x + 40, y - 60, x + 40, y, x + 10, y - 30);
}
void deadBird(int x, int y) {
  pushMatrix();
  translate(x, y);
  stroke(0);
  strokeWeight(5);
  //inner curve
  beginShape();
  curveVertex(0, 2);
  curveVertex(0, 2);
  curveVertex(-5, 4);
  curveVertex(-12, 10);
  curveVertex(-12, 10);
  endShape();
  //back
  line(-20, 10, 20, 10);
  line(20, 10, 23, 13);
  line(23, 13, 25, 10);
  line(25, 10, 28, 13);
  line(28, 13, 31, 10);
  line(31, 10, 33, 0);
  //tail
  beginShape();
  curveVertex(-20, 10);
  curveVertex(-20, 10);
  curveVertex(-6, 5);
  curveVertex(-3, 0);
  curveVertex(-3, 0);
  endShape();
  //Belly
  beginShape();
  curveVertex(-3, 0);
  curveVertex(-3, 0);
  curveVertex(-2, -1);
  curveVertex(0, -2);
  curveVertex(1, -2.6);
  curveVertex(2, -3);
  curveVertex(3, -3.4);
  curveVertex(4, -3.7);
  curveVertex(5, -4);
  curveVertex(6, -4.2);
  curveVertex(7, -3.9);
  curveVertex(8, -3.4);
  curveVertex(9, -3);
  curveVertex(10, -2.6);
  curveVertex(11, -2);
  curveVertex(11, -2);
  endShape();
  //Leg
  strokeWeight(3);
  line(5, 10, 3, 15);
  line(-2, 16, 6, 20);
  //top of belly to left of beak
  line(11, -2, 17, -2);
  //beak connecting with line
  line(26, -7, 17, -2);
  //dead eye
  textSize(10);
  fill(0);
  text("x", 23, 3);

  //top of head to right of beak
  beginShape();
  curveVertex(33, 0);
  curveVertex(33, 0);
  curveVertex(30, -3);
  curveVertex(29, -4);
  curveVertex(28, -5);
  curveVertex(26, -7);
  curveVertex(26, -7);
  endShape();

  popMatrix();
}
