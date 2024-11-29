void main(){
  emitirNumeros()
    .listen( (int value){
      
    print(" Valor Stream $value");
    
    
    });
}

Stream<int> emitirNumeros()async*{
  
  final valor=[1,2,3,4,5];
  for(int i in valor){
    await Future.delayed(Duration(seconds: 1));
    yield (i);
    //Return para async*
  }
}