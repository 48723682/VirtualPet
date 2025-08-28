void setup(){
  size(400, 400);
  background(50, 142, 191);
}

void draw(){
  tail();
  legs();
  head();
  shell();
  face();
  shellOutline();
}

void translateNrotate(float x, float y, float d){
  translate(x, y);
  rotate(d);
}

void drawLeg(float x, float y, float d){
  fill(73, 108, 49);
  pushMatrix();
  translate(x, y);
  rotate(d);
  ellipse(0, 0, 65, 25);
  popMatrix();
}

void shell(){
  fill(149, 167, 103);
  ellipse(200, 200, 150, 175);
  fill(123, 137, 72);
  ellipse(200, 200, 140, 165);
}

void head(){
  fill(73, 108, 49);
  ellipse(200, 100, 75, 100);
}

void legs(){
  drawLeg(135, 125, 45);
  drawLeg(265, 275, 45);
  drawLeg(265, 125, -45);
  drawLeg(135, 275, -45);
}

void tail(){
  fill(255, 255, 255);
  triangle(195, 286, 205, 286, 200, 297);
}

void drawEye(float x, float y){
  fill(255, 255, 255);
  ellipse(x, y, 20, 20);
  fill(0, 0, 0);
  ellipse(x, y, 5, 5);
}

void face(){
  //Eyes
  drawEye(183, 72);
  drawEye(217, 72);
  
  //Nose
  fill(51 ,85, 42);
  ellipse(200, 60, 15, 10);
  fill(0, 0, 0);
  ellipse(197, 60, 2, 2);
  ellipse(203, 60, 2, 2);
  
  //Tongue
  fill(147, 70, 108);
  ellipse(200, 55, 7, 4);
}

void shellOutline(){
  line(185, 175, 215, 175);
  line(185, 175, 170, 145);
  line(170, 145, 150, 145);
  line(150, 145, 135, 170);
  line(135, 170, 150, 200);
  line(150, 200, 170, 200);
  line(150, 200, 133, 220);
  line(133, 220, 150, 245);
  line(150, 245, 145, 250);
  line(150, 245, 170, 245);
  line(170, 245, 185, 225);
  line(170, 145, 185, 120);
  line(185, 120, 215, 120);
  line(215, 120, 230, 150);
  line(230, 150, 255, 150);
  line(255, 150, 265, 175);
  line(265, 175, 255, 200);
  line(255, 200, 265, 225);
  line(265, 225, 255, 250);
  line(255, 250, 235, 250);
  line(235, 250, 215, 280);
  line(215, 280, 185, 280);
  line(185, 280, 170, 245);
  line(235, 250, 215, 225);
  line(255, 200, 230, 200);
  line(230, 150, 215, 175);
  line(215, 175, 230, 200);
  line(230, 200, 215, 225);
  line(215, 225, 185, 225);
  line(185, 225, 170, 200);
  line(170, 200, 185, 175);
}
