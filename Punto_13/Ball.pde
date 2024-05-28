class Ball extends GameObject{
  private PVector velocity;
  private float speed;
  
  public Ball(){
    this.speed = 5;
    this.position = new PVector(width/2, height/2);
    this.velocity = PVector.random2D().mult(speed);
    this.spriteSize = new PVector(20,20);
    this.sprite = loadImage("pokeball2.png");
  }
  
  public void display(){
    ellipse(this.position.x, this.position.y, this.spriteSize.x, this.spriteSize.y);
    imageMode(CENTER);
    image(sprite, position.x, position.y, spriteSize.x, spriteSize.y);
  }
  
  public PVector move(Player p1, Player p2, PVector score){
    
    this.position.add(velocity);
    
    if(this.position.x - this.spriteSize.x/2 <= p1.position.x + p1.spriteSize.x/2 && this.position.y >= p1.position.y - p1.spriteSize.y/2 && this.position.y <= p1.position.y + p1.spriteSize.y/2){
      PVector normal = new PVector(1,0);
      this.velocity = reflectBall(this.velocity, normal);
      score.x+=1;
    }
    if(this.position.x + this.spriteSize.x/2 >= p2.position.x - p2.spriteSize.x/2 && this.position.y >= p2.position.y - p2.spriteSize.y/2 && this.position.y <= p2.position.y + p2.spriteSize.y/2){
      PVector normal = new PVector(1,0);
      this.velocity = reflectBall(this.velocity, normal);
      score.x+=1;
    }
    
    if(this.position.y - this.spriteSize.y/2 <= 0 || this.position.y + this.spriteSize.y/2 > height){
      velocity.y *= -1;
    }
    
    if(this.position.x - this.spriteSize.y/2 < 0 || this.position.x + this.spriteSize.y/2 > width){
      this.position = new PVector(width/2, height/2);
      velocity = PVector.random2D().mult(speed);
      score.y = score.x;
      score.x = 0;
    }
    return score;
  }
  
  public PVector reflectBall(PVector velocityIn, PVector normal){
    float dot = velocityIn.dot(normal)*2;
    PVector reflexion = velocityIn.copy().sub(normal.copy().mult(dot));
    return reflexion;
  }
}
