class Enemy extends GameObject{
  
  public Enemy(){
    this.sprite = loadImage("tank-amarillo.png");
    this.posicion = new PVector(width/2, height/2);
    anchoSprite = 40;
    altoSprite = 40;
  }
  
  public void display(){
    image(sprite, posicion.x, posicion.y, anchoSprite, altoSprite);
  }
}
