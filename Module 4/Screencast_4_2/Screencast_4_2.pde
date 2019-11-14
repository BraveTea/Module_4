boolean isOff = true;


void setup() {
  size(400, 200);
  ellipseMode(CORNER);
}

void draw() {
  background(0);
  if (isOff) {
    drawLamp(#760707);
  } 
  else {
    drawLamp(#F7072C);
  }
  isOff = !isOff;
  delay(100);
}

void drawLamp(int colour) {
  fill(100);
  rect(75, 120, 50, 50);
  fill(colour);
  ellipse(55, 50, 90, 90);
}
