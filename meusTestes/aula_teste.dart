import 'dart:math';
main(){
  Random random = Random();
  int num = random.nextInt(10);
  int? gui;
  if(num<5) {
    gui=num;
  }
  print(gui != null? gui :"É nulo");
}