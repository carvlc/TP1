class Cannonball extends GameObject{
  private float velocidad;
  
  public Cannonball(){
    this.sprite = loadImage("fire2.png");
    this.posicion = new PVector(width/2, height/2);
    anchoSprite = 10;
    altoSprite = 10;
    velocidad = 5;
  }
  
  public void display(){
    image(sprite, posicion.x, posicion.y, anchoSprite, altoSprite);
  }
  
  public void move(PVector origen, PVector destino , boolean detectado){
    PVector aim = PVector.sub(origen, destino).normalize().mult(velocidad);
    if(detectado == false){
      this.posicion.add(aim);
      if(this.posicion.x > width || this.posicion.x < 0 || this.posicion.y > height || this.posicion.y < 0){
        this.posicion = new PVector(width/2, height/2);
      }
    }else{
      if(this.posicion.x > width || this.posicion.x < 0 || this.posicion.y > height || this.posicion.y < 0){
        this.posicion = new PVector(-10,-10);// la ball se oculta fuera del lienzo
      }
      this.posicion.add(aim);
    }
  }
}
