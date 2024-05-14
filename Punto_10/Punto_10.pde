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
PVector D;
Vector AB;
Vector BC;
Vector CD;
Vector DA;

public void setup(){
  size(400,400);
  
  A = new PVector(-10, -20);
  B = new PVector(40, -10);
  C = new PVector(50, 20);
  
  AB = new Vector(A, B);
  BC = new Vector(B, C);
  calcularPuntoD();
  CD = new Vector(C,D);
  DA = new Vector(D,A);
}

public void draw(){
  background(255);
  translate(width/2, height/2);
  stroke(0);
  strokeWeight(1);
  AB.display();
  BC.display();
  CD.display();
  DA.display();
  fill(0);
  textSize(10);
  text("A", A.x, A.y);
  text("B", B.x, B.y);
  text("C", C.x, C.y); 
  text("D", D.x, D.y);


}

public void calcularPuntoD(){
  PVector aux = BC.restarVector(C,B);
  D = AB.sumarVector(A,aux);
}
