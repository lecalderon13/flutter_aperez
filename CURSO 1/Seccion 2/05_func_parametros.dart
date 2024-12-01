void main(){
  print (holaTodos());
  print (holaTodos2());
  print ("La suma de 10 y 5 es ${Suma(10,5)}");
  print ("La resta de 10 y 5 es ${Resta(10,5)}");
  print (Suma_2(8,3));
  print (Resta_2(9,3));
  print (Multipli(10,5));
  print (paramOpcional(10,));
  print(paramOpcional_2(20,5));
  print(Funcion(nombre: "Alex"));
}
//Forma 1
String holaTodos(){
  return "Hola muchachos";
}
int Suma(int a,int b){
  return a + b;
}
int Resta(int a, int b){
  return a - b;
}
int Multipli(int a,int b){
  return a*b;
}
//Forma 2
String holaTodos2()=> "Bienvenidos, Gracias por venir";
String Suma_2(int a,int b)=> "La suma de 8 y 3 es ${a+b}";
int Resta_2(int a,int b)=> a-b;
int Multipli_2(int a,int b)=>a*b;
//Parametro opcional, no obligatorio
String paramOpcional(int a,[int b=0])=>"Aqui hay ${a+b}";
int paramOpcional_2(int a, [int b=0])=>a-b;
//Funcion que tiene parametro con nombre
//Requiere que se mencione al llamar la funcion para funcionar
 
String Funcion({required String nombre, String apellido = "Perez"}) {
  return "Hola ${nombre}, te apellidas ${apellido}?";
}