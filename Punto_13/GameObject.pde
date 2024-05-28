abstract class GameObject{
  protected PImage sprite;
  protected PVector spriteSize;
  protected PVector position;
  
  public GameObject(){
  }
  
  public void setSprite(PImage sprite){
    this.sprite = sprite;
  }
  public PImage getSprite(){
    return this.sprite;
  }
  
  public void setSpriteSize(PVector spriteSize){
    this.spriteSize = spriteSize;
  }
  public PVector getSpriteSize(){
    return this.spriteSize;
  }
  
  public void setPosition(PVector position){
    this.position = position;
  }
  public PVector getPosition(){
    return this.position;
  }
}
