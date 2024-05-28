class Player extends GameObject{
  
  public Player(){
    this.sprite = loadImage("tank-verde.png");
    this.anchoSprite = 40;
    this.altoSprite = 40;
    this.posicion = new PVector(0, 0);
  }
  
  public void display(){
    image(sprite, mouseX,mouseY, anchoSprite, altoSprite);
  }
}
