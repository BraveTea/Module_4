boolean isOff = true;


void setup() {
  size(400, 200);
  ellipseMode(CORNER);
}

void draw() {
  background(0);
  if (isOff) {
    drawThreeLamps(#760707);
    
  } 
  else {
    drawThreeLamps(#F7072C);
  }
  isOff = !isOff;
  delay(100);
}

void drawThreeLamps(int colour){
  drawLamp(55, 50, colour);
  drawLamp(155, 50, colour);
  drawLamp(255, 50, colour);
}

void drawLamp(int x, int y, int colour) {
  fill(100);
  rect(x+20, y+70, 50, 50);
  fill(colour);
  ellipse(x, y, 90, 90);
}
