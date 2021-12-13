public class WallPiece {
  private PVector pos;
  private final int SIZE = 50;
  private int hp = 3;
  private color c;
  public boolean active = true;
  
  
  public WallPiece(int x, int y){
    pos = new PVector(x,y);
    c = color(
      (int)(Math.random()*256),
      (int)(Math.random()*256),
      (int)(Math.random()*256)
    );
  }
  
  public void show() {
    fill(c);
    square(pos.x,pos.y,SIZE);
  }
}
