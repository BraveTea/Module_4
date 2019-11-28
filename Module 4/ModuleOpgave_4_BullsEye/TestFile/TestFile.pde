final int size = 500;

boolean click = true;

int posBullsEye = 0;

boolean isMovingLeft = false; 

int circleSize = 55;

boolean isStart = false; 

int testX = 1;

int hitsVar = 0;
int missesVar = 0;

void settings() {
  size(size, size); //by using settings you can appoint a variable to size
}

void setup() {
}

void draw() {
  background(0);
  if (isStart == true) {
    straveBullsEye();
  }
  startPauseButton();
  hitMissCounter();
}

void mouseClicked() {

  if (isMouseOnButton()) {
    isStart = !isStart;
  } else {
    if (isMouseOnBullsEye()) {
      hits();
    } else {
      misses();
    }
  }
}

void hitMissCounter() {
  textAlign(CORNER);
  textSize(15);
  fill(255);
  text("Hits: " + hitsVar + " Misses: " + missesVar, 15, 25);
}

void hits() {
  if (isStart) {
    hitsVar++;
  }
}

void misses() {
  if (isStart) {
    missesVar++;
  }
}

void straveBullsEye() {
  if (posBullsEye == 0) {
    isMovingLeft = false;
  }
  if (posBullsEye == width - circleSize) {
    isMovingLeft = true;
  }
  if (isMovingLeft == false) {
    posBullsEye++;
  }
  if (isMovingLeft == true) {
    posBullsEye--;
  }
  // posBullsEye = isMovingLeft ? posBullsEye++ : posBullsEye--;
  drawBullsEye(posBullsEye);
}

void startPauseButton() {
  drawButton();
  startPause();
  isMouseOnButton();
}

void drawButton() {
  fill(#FF00FF);
  rectMode(CENTER);
  rect(width/2, height - 25, 100, 50);
}

void startPause() {
  if (isStart == false) {
    drawStart();
  }
  if (isStart == true) {
    drawPause();
  }
}

void drawStart() {
  fill(0);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("START", width/2, height - 25);
}

void drawPause() {
  fill(0);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("PAUSE", width/2, height - 25);
}

boolean isMouseOnButton() {
  return(isXonButton() && isYonButton());
}

boolean isXonButton() {
  return(mouseX >= width/2 - 50 && mouseX <= width/2 + 50);
}

boolean isYonButton() {
  return(mouseY >= height - 50);
}

void drawBullsEye(int x) { //perhaps I can put this in a for loop where it decreases the size by 10 every time) But it also needs to change colour....
  fill(#FF0000);
  circle(x + circleSize/2, height/2, circleSize); 
  fill(255);
  circle(x + circleSize/2, height/2, circleSize-10);
  fill(#FF0000);
  circle(x + circleSize/2, height/2,  circleSize-20);
  fill(255);
  circle(x + circleSize/2, height/2,  circleSize-30);
  fill(#FF0000);
  circle(x + circleSize/2, height/2,  circleSize-40);
}

boolean isMouseOnBullsEye() {
  return (isXonBullseye() && isYonBullseye());
}

boolean isXonBullseye() {
  return (mouseX >= posBullsEye && mouseX <= posBullsEye + circleSize);
}

boolean isYonBullseye() {
  return (mouseY >= height/2 - circleSize/2 && mouseY <= height/2 + circleSize/2);
}
