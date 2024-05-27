class Enemy extends GameObject{
  Fireball fire;
  public Enemy(){
    setPosicion(new PVector(width/3,height/2));
    sprite = loadImage("data/enemy-mario.png");
    widthSprite = 40;
    heightSprite = 60;
    fire = new Fireball();
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite, posicion.x, posicion.y, widthSprite, heightSprite);
  }
  
  public void shoot(PVector origen, PVector destino, PVector aim){
    float angulo = PVector.angleBetween(aim, new PVector(1,0));
    boolean inRange = angulo < radians(30) && angulo > -radians(30);
      fire.display();
      fire.move(origen, destino, inRange);
  }
}
