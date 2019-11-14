/* So this exercise basically asks me to explore functions like round() and ceil() which I already know
so I am not going to go too deeply into all of this
*/

float[] numArr = {7.56, -7.56, 7.498, -7.498, 3.01, -3.01, 4.999, -4.999};

void setup(){
  for (float i : numArr){
    printNum(i);
  }
}

void draw(){

}

void printNum(float num){
  println("number     :", num);
  println("int()      :", int(num));
  println("round()    :", round(num));
  println("floor()    :", floor(num));
  println("ceil()     :", ceil(num));
  println("\n");
}
