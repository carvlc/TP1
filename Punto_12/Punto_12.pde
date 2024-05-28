Player player;
Enemy enemy;


void setup(){
  size(400,400);
  imageMode(CENTER);
  player = new Player();
  enemy = new Enemy();
}
void draw(){
  background(95,90,120);
  player.setPosicion(new PVector(mouseX, mouseY));
  float angle = atan2(player.getPosicion().y - height/2, player.getPosicion().x- width/2);
  boolean detectado = enemy.detectar(player.posicion);
  
  pushMatrix();
  translate(width/2, height/2);
  if(detectado == false){
    rotate(angle);
  }
  enemy.display();
  popMatrix();
  
  enemy.shoot(player.posicion,new PVector(width/2, height/2), detectado);
  player.display();
}
