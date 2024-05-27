abstract class GameObject{
  protected PImage sprite;
  protected PVector posicion;
  protected int widthSprite;
  protected int heightSprite;
  
  public GameObject(){
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setWidthSprite(int widthSprite){
    this.widthSprite = widthSprite;
  }
  
  public int getWidthSprite(){
    return this.widthSprite;
  }
  
  public void setHeightSprite(int heightSprite){
    this.heightSprite = heightSprite;
  }
  
  public int getHeightSprite(){
    return this.heightSprite;
  }
}
