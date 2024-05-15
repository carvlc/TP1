class Player extends GameObject{

  public Player(){
    sprite = loadImage("data/player-bob.png");
    widthSprite = 40;
    heightSprite = 45;
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite, mouseX, mouseY, widthSprite, heightSprite);
  }
  
}
