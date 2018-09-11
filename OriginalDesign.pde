int ot = 200;
float sc = 1;
void setup() {
  size(800, 600);
  frameRate(4);
}

void draw() {
  background(197);
  scale(1.5);
  translate(-100,-30);
  fill(0, 0, 0);
  computer();
  translate(-65, -100);
  drawBoxes();
  fill(255, 255, 255);
  shapes();
  pushMatrix();
  translate(353, -205);
  diamond();
  popMatrix();
  textSize(25);
  translate(460, -150);
  text("pIcK tHe cOlOrS iN tHe rIgHt oRdEr", -100, 330);
  text("", 50, 300);
  
}

float colors() {
  float x = Math.round(Math.random()*256);
  return x;
}

void computer() {
  rect(150+ot, 510-ot, 40*sc, 60*sc, 3);
  rect(70+ot, 550-ot, 200*sc, 20*sc, 3);
  rect(30+ot, 300-ot, 280*sc, 240*sc, 3);
  fill(196, 54, 201);
  rect(45+ot, 315-ot, 250*sc, 210*sc, 3);
}

void drawBoxes() {
  fill(colors(), colors(), colors());
  box1();
  fill(colors(), colors(), colors());
  box2();
  fill(colors(), colors(), colors());
  box3();
  fill(colors(), colors(), colors());
  box4();
}

void box1() {
  translate(-10,0);
  rect(400, 300, 40, 60);
}

void box2() {
  translate(-50,0);
  rect(400, 300, 40, 60);
}

void box3() {
  translate(100,0);
  rect(400, 300, 40, 60);

}

void box4() {
  translate(50,0);
  rect(400, 300, 40, 60);
}

void shapes() {
  translate(390,305);
  scale(0.5);
  triangle(30, 75, 58, 20, 86, 75);
  translate(-140, -47);
  ellipse(100, 100, 50, 50);
  translate(-423, -223);
  rect(400, 300, 45, 45);
  translate(-100, 0);
}

void diamond() {
  rotate(PI/4);
  rect(400, 300, 45, 45);
}
