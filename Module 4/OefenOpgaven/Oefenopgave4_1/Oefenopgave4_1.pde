/* before running the programme:
  What do you think println(a+b); will print?
  Explain your answer
  
  It rather depends on whether or not primitive types are copied or replaced... 
  it is either 18 or 60
  
  My first instinct is 18.
  
  Looked up the reason: Variables declared within setup() are not accessible within other funcitons, including draw(). 
  So a and b are not accessible in change!

*/

void setup(){
  int a = 6;
  int b = 12;
  change(a,b);
  println(a+b);
}

void change(int a, int b){
  a = a * 4;
  b = b * 3;
}
