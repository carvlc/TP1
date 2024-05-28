class Player extends GameObject{
  
  public Player(){
    this.position = new PVector(0,0);
    this.spriteSize = new PVector(10,80);
  }
  
  public void display(){
    rectMode(CENTER);
    rect(this.position.x, this.position.y, this.spriteSize.x, this.spriteSize.y);
  }
}
