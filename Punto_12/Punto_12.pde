Player player;
Enemy enemy;

void setup(){
  size(400,400);
  player = new Player();
  enemy = new Enemy();
}
void draw(){
  imageMode(CENTER);
  player.display();
  enemy.display();
  
}
