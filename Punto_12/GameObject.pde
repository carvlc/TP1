abstract class GameObject{
  protected PImage sprite;
  protected PVector posicion;
  protected int anchoSprite;
  protected int altoSprite;
  
  public GameObject(){}
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setSprite(PImage sprite){
    this.sprite = sprite;
  }
  public PImage getSprite(){
    return this.sprite;
  }
  
  public void setAnchoSprite(int anchoSprite){
    this.anchoSprite = anchoSprite;
  }
  public int getAnchoSprite(){
    return this.anchoSprite;
  }
  
  public void setAltoSprite(int altoSprite){
    this.altoSprite = altoSprite;
  }
  public int getAltoSprite(){
    return this.altoSprite;
  }
}
