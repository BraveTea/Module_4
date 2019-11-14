/*
The challenge here is to write a programme/game where, after clicking a start button (which then changes to stop), a bulls eye
will move across the screen from left to right (and apparently when it reaches the right side of the screen it should reappear 
on the left side of the screen. I am tempted to have it go left to right and right to left). 
A counter should be visible at the top of the screen where the number of hits and misses are shown.
A hit is a click with the mouse inside the bulls eye, a miss when it is clicked outside of the bulls eye anywhere else 
on the screen (the playing field to be correct. I reckon it will not take anything clicked outside of the playing field).
*/
//Ternary operator in the start stop button for what when

final int size = 500;

boolean click = true;

void settings() {
  size(size, size); //by using settings you can appoint a variable to size
}

void setup(){
  
}

void draw(){
  background(0);
  startStopButton();
  hitCounter();
  bullsEye();
}

void mouseClicked(){
  drawButton();
}

void bullsEye(){
  for (int i = 0; i < width - 55; i++){    //pay attention the circle size is back here!! So put it in a variable
    
      drawBullsEye(i);
   
  } //RIGHT THIS DOESN'T WORK BECAUSE IT ITERATES THROUGH THE LOOP FIRST AND THEN GIVES ME THE RESULT, WHICH IS A BULLSEYE AT THE END OF THE SCREEN. HOW TO MOVE IT?
}

void hitCounter(){
  drawHitCounter();
}

void startStopButton(){
  drawStartStopButton();
}

void drawStartStopButton(){
  fill(#FF00FF);
  rectMode(CENTER);
  rect(width/2, height - 25, 100, 50);
}
void drawButton(){
  if (mouseX >= width/2 - 50 && mouseX <= width/2 + 50){
    if(mouseY >= height - 50) {
      drawStop();
    }
  }
}

void drawStart(){
  fill(0);
  textAlign(CENTER);
  text("START", width/2, height - 25);
}

void drawStop(){
  stroke(0);
  textAlign(CENTER);
  text("STOP", width/2, height - 25);
}


void drawHitCounter(){

}

void drawBullsEye(int x){ //perhaps I can put this in a for loop where it decreases the size by 10 every time) But it also needs to change colour....
  fill(#FF0000);
  circle(x + 55/2, height/2, 55); //5 is circle size here, I think no need to put it in a variable. Only used here. 55/2 == because it is CENTER this will make it start at the edge.
  fill(255);
  circle(x + 55/2, height/2, 45);
  fill(#FF0000);
  circle(x + 55/2, height/2, 35);
  fill(255);
  circle(x + 55/2, height/2, 25);
  fill(#FF0000);
  circle(x + 55/2, height/2, 15);
}
