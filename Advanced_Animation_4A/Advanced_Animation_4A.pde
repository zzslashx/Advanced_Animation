//circles 
fill(0); 
circle(0,0,150); 
fill(249,215,28,100); 
ellipse(0,0,100,100); 
 
//triangles around circles (spikes) 
strokeWeight(5); 
fill(0); 
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
 
