import 'dart:math';
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => 2+3;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void mains() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}
void main(){
  String naoDaParaNulo = "Gui" as String;

  print(naoDaParaNulo);
  String? podeSerNula;
  naoDaParaNulo=podeSerNula.toString();
  print(naoDaParaNulo);
  print(podeSerNula);
  //naoDaParaNulo =String?;
}