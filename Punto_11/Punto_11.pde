//Ejercicio 11: En clases se mostró la aplicación del producto punto para determinar el campo de
//visión de un GameObject. Realice un prototipo que incluya imágenes para los gameObjects.
//Cuando el enemigo detecte alpersonaje, le disparará una bola de fuego. El campo de visión del
//enemigo es de 30 grados hacia arriba y 30 grados hacia abajo, siempre mirando hacia la derecha.
//Esto es una mecánica: Detección y ataque de un gameObject a otro dentro del campo de visión.
//Modele el diagrama de clases, el diagrama de elementos visibles y la historia de usuario.

Vector vectorPlayerEnemy;
Enemy evilMario;
Player bob;
PImage fondo;
PVector aim;

public void setup(){
  size(400,400);
  fondo = loadImage("grillaw.jpg");
  vectorPlayerEnemy = new Vector();
  evilMario = new Enemy();
  bob = new Player();
}

public void draw(){
  image(fondo, width/2, height/2, width,height);
  bob.vector.setOrigen(new PVector(mouseX,mouseY));
  dibujarVectorPlayerEnemy();
  bob.display();
  evilMario.display();
  aim = PVector.sub(bob.vector.getOrigen(),evilMario.posicion).normalize();
  evilMario.shoot(bob.vector.getOrigen(),evilMario.posicion, aim);
  escribirMensaje();
}

public void dibujarVectorPlayerEnemy(){
  vectorPlayerEnemy.setOrigen(bob.vector.getOrigen());
  vectorPlayerEnemy.setDestino(PVector.sub(evilMario.posicion, bob.vector.getOrigen()));
  vectorPlayerEnemy.display();
}

public void escribirMensaje(){
  float dotProduct = bob.vector.obtenerProductoPunto(vectorPlayerEnemy);
  println(dotProduct);
  textSize(20);
  fill(0);
  text(dotProduct,100,20);
}
