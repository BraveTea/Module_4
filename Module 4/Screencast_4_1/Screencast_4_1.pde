boolean isOff = true;


void setup(){
  size(400,200);
}

void draw() {
  background(0);
  if (isOff){
    fill(#760707);
  }
  else {
    fill(#F7072C);
  }
  isOff = !isOff;
  rect(75,120,50,50);
  delay(100); 
}
