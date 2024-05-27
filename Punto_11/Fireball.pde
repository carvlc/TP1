class Fireball extends GameObject{
  private float velocidad;
  
  public Fireball(){
    setPosicion(new PVector(width/3,height/2));
    sprite = loadImage("data/fire.png");
    widthSprite = 20;
    heightSprite = 20;
    velocidad = 5;
  }
  
  public void display(){
    imageMode(CENTER);
    image(sprite, getPosicion().x, getPosicion().y, widthSprite, heightSprite);
  }
  
  public void move(PVector origen, PVector destino, boolean inRange){
    PVector aim = PVector.sub(origen, destino).normalize().mult(velocidad);
    if(inRange){
      this.posicion.add(aim);
      if(this.posicion.x > width){
        this.posicion = new PVector(width/3, height/2);
      }
    }else{
      if(this.posicion.x > width){
        this.posicion.x = width+10;
      }else{
        this.posicion.add(aim);
      }
      
    }
  }
  
}
