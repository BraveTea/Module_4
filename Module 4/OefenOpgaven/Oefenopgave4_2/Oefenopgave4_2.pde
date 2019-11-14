

void setup(){
  size(600,400);
  background(0);
  //grid();
}

void draw(){
  smooth();
  welcome(width/4, height/4, "Harry");
  welcome(width/4, (height/4)*3, "Marianne");
  welcome((width/4)*3, height/4, "Ludo");
  welcome((width/4)*3, (height/4)*3, "Maaike");
  welcome((width/4)*2, (height/4)*2, "Alexander");
}

void welcome(int x, int y, String name){
  stroke(255);
  textAlign(CENTER);
  text("Hallo " + name + " , hoe gaat het met je?", x, y);
}

void grid(){
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
