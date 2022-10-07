StackStart(){

  print("Started in Main");
  funcOne();
  print("Main finished");
}


funcOne(){
  print("Started 'number' 1");
  try{
    funcTwo();
  }   catch(err,s){
    print("Deu ruim no func2 $err");//não precisa de on
    print(s);
    rethrow;
  } finally{
    print("Chego até aqui no finally");
  }
  print("Function One finished");
}

funcTwo(){
  print("Started Two");
  for(int i=1;i<6;i++){
    print("Numero $i");
    double amount = double.parse("Not a number");
  }
  print("Finished Function Two");
}
