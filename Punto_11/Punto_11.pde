//Ejercicio 11: En clases se mostró la aplicación del producto punto para determinar el campo de
//visión de un GameObject. Realice un prototipo que incluya imágenes para los gameObjects.
//Cuando el enemigo detecte alpersonaje, le disparará una bola de fuego. El campo de visión del
//enemigo es de 30 grados hacia arriba y 30 grados hacia abajo, siempre mirando hacia la derecha.
//Esto es una mecánica: Detección y ataque de un gameObject a otro dentro del campo de visión.
//Modele el diagrama de clases, el diagrama de elementos visibles y la historia de usuario.

Vector vectorPersonaje;
PVector posicionTesoro;
Vector vectorPersonajeTesoro;
Enemy evilMario;
Player bob;

public void setup(){
  size(400,400);
  vectorPersonaje = new Vector(new PVector(0,0), new PVector(10,0));
  posicionTesoro = new PVector(width/2,height/2);
  vectorPersonajeTesoro = new Vector();
  
  evilMario = new Enemy();
  bob = new Player();
}

public void draw(){
  background(255);
  //dibujarTesoro();
  vectorPersonaje.setOrigen(new PVector(mouseX, mouseY));
  vectorPersonaje.display();
  dibujarVectorPersonajeTesoro();
  escribirMensaje();
  evilMario.display();
  bob.display();
}

public void dibujarVectorPersonajeTesoro(){
  vectorPersonajeTesoro.setOrigen(vectorPersonaje.getOrigen());
  vectorPersonajeTesoro.setDestino(PVector.sub(posicionTesoro, vectorPersonaje.getOrigen()).normalize().mult(50));
  vectorPersonajeTesoro.display();
}


//public void dibujarTesoro(){
//  strokeWeight(10);
//  point(posicionTesoro.x,posicionTesoro.y);
//}

public void escribirMensaje(){
  float dotProduct = vectorPersonaje.obtenerProductoPunto(vectorPersonajeTesoro);
  println(dotProduct);
  textSize(20);
  fill(0);
  text(dotProduct,100,20);
}
