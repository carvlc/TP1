class Vector{
  private PVector origen;
  private PVector destino;
  
  public Vector(){
  }
  public Vector(PVector origen, PVector destino){
    this.origen = origen;
    this.destino = destino;
  }
  
  
  public PVector sumarVector(PVector vectorA, PVector vectorB){
    return PVector.add(vectorA, vectorB);
  }
  
  public PVector restarVector(PVector vectorA, PVector vectorB) {
    return PVector.sub(vectorA, vectorB);
  }
  
  public void display() {
    stroke(0);
    line(origen.x, origen.y, destino.x, destino.y);
  }
  
  
  
  public void setOrigen(PVector origen){
    this.origen = origen;
  }
  public PVector getOrigen(){
    return this.origen;
  }
  
  public void setDestino(PVector destino){
    this.destino = destino;
  }
  public PVector getDestino(){
    return this.destino;
  }
}
