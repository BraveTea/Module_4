final int size = 500;

boolean click = true;

int posBullsEye = 0;

boolean isMovingLeft = false; 

int circleSize = 55;

boolean isStart = false; 

boolean isMouseInButton = false; //boolean isMouseInButton


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
}

void mouseClicked() {
  if (isStart == false && isMouseInButton == true) {
    isStart = true;
  } else {
    isStart = false;
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
  buttonMousePos();
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

// here make a boolean function (called isMouseInButton() eg and have it return a boolean)
void buttonMousePos() {
  if (mouseX >= width/2 - 50 && mouseX <= width/2 + 50) {
    if (mouseY >= height - 50) {
      isMouseInButton = true;
    }
  }
  else {
    isMouseInButton = false;
  }
}



void drawBullsEye(int x) { //perhaps I can put this in a for loop where it decreases the size by 10 every time) But it also needs to change colour....
  fill(#FF0000);
  circle(x + circleSize/2, height/2, circleSize); 
  fill(255);
  circle(x + circleSize/2, height/2, 45);
  fill(#FF0000);
  circle(x + circleSize/2, height/2, 35);
  fill(255);
  circle(x + circleSize/2, height/2, 25);
  fill(#FF0000);
  circle(x + circleSize/2, height/2, 15);
}




/* DEFUNCT FUNCTIONS
 
 void moveBullsEye() {
 if (posBullsEye <= width - circleSize ) {
 drawBullsEye(posBullsEye);
 posBullsEye++;
 } else {
 posBullsEye = 0;
 }
 }
 
 */
