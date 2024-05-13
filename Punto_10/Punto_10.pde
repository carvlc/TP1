//Ejercicio 10
//Modele (con diagrama de clases) y programe (con Processing) una clase Vector a la
//que se pueda pasar el punto origen y el punto destino. Esta clase debe poder incluir operaciones
//para sumar y restar otro objeto de tipo Vector, y que devuelve otro Vector resultante. El objetivo
//por cumplir (planteado como una historia de usuario) será que se dibujen los vectores de tal
//forma que conformen un paralelogramo. Use como referencia A = (−1, −2), B = (4, −1) y
//C = (5,2). Entonces deberá calcular el punto D, para lo cual, obviamente use las operaciones y
//atributos que provee esta clase que ud. ha de diseñar.

PVector A;
PVector B;
PVector C;

public void setup(){
  size(400,400);
  
  A = new PVector(-1, -2);
  B = new PVector(4, -1);
  C = new PVector(5, 2);
  
}

public void draw(){
  
}
