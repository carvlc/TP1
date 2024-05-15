class Enemy extends GameObject{
  
  public Enemy(){
    setPosicion(new PVector(width/2,height/2));
    sprite = loadImage("data/enemy-mario.png");
    widthSprite = 40;
    heightSprite = 60;
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite, posicion.x, posicion.y, widthSprite, heightSprite);
  }
  
  public void shoot(){
    
  }
}
