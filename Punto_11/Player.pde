class Player extends GameObject{
  Vector vector;
  public Player(){
    sprite = loadImage("data/player-bob.png");
    widthSprite = 40;
    heightSprite = 45;
    vector = new Vector(new PVector(0,0), new PVector(10,0));
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite, mouseX, mouseY, widthSprite, heightSprite);
  }
  
}
