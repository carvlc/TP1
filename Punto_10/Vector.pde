class Vector{
  private PVector origen;
  private PVector destino;
  
  public Vector(){
    
  }
  
  public Vector(PVector origen, PVector destino){
    this.origen = origen;
    this.destino = destino;
  }
  
  public Vector sumarVector(Vector otro){
    return otro;
  }
  
  public Vector restarVector(Vector otro) {
    return otro;
  }
  
  public void dibujar() {
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
