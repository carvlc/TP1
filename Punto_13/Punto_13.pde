Player paletaUno;
Player paletaDos;
Ball ball;
PVector score;

void setup(){
  size(400,400);
  paletaUno = new Player();
  paletaDos = new Player();
  ball = new Ball();
  score = new PVector(0,0);
}

void draw(){
  background(55,100,110);
  paletaUno.position = new PVector(20, mouseY);
  paletaDos.position = new PVector(width - 20, mouseY);
  paletaUno.display();
  paletaDos.display();
  ball.display();
  score = ball.move(paletaUno,paletaDos, score);
  mostrarPuntaje(score);
}

public void mostrarPuntaje(PVector score){
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Score: " + round(score.x), width/2, 10);
  text("Old: " + round(score.y), width/2, height - 10);
}
