class Enemy extends GameObject{
  private Cannonball ball;
  private int distancia;
  public Enemy(){
    this.sprite = loadImage("tank-amarillo.png");
    this.posicion = new PVector(0, 0);
    anchoSprite = 40;
    altoSprite = 40;
    ball = new Cannonball();
    distancia = 150;
  }
  
  public void display(){
    fill(234,123,123);
    noStroke();
    ellipse(posicion.x, posicion.y, distancia*2, distancia*2);
    image(sprite, posicion.x, posicion.y, anchoSprite, altoSprite);
    
  }
  
  public void shoot(PVector origen, PVector destino, boolean detectado){
    ball.display();
    ball.move(origen,destino,detectado);
  }
  
  public boolean detectar(PVector playerPosicion){
    return distancia < playerPosicion.dist(new PVector(width/2, height/2));
  }
}
