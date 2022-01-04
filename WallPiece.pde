public class WallPiece {
  private PVector pos;
  private final int SIZE = 50;
  private int hp = 3;
  private color c;
  public boolean active = true;
  public int speed,vx,vy,x,y;
  public float ax,ay;
  
  
  public WallPiece(int x, int y){
    pos = new PVector(x,y);
    c = color(
      (int)(Math.random()*256),
      (int)(Math.random()*256),
      (int)(Math.random()*256)
    );
  }
   public void attack(WallPiece w, Player p) {
    chase(p);
    //is the spider close enough to bite?
    if (collides(w,p) == true) { //pass arguments s,c
      bite(p);
    }
  }
  public void chase(Player p) {
    ax = map((x-p.x),300,-300,speed*-0.01, speed*0.01);
    ay = map((y-p.y),300,-300,speed*-0.01,speed*0.01);
    vx += ax;
    vy += ay;
  }
  public void show() {
    fill(c);
    square(pos.x,pos.y,SIZE);
  }
  private boolean collides(WallPiece w, Player p) {
    return dist((float)w.x, (float)w.y, (float)p.x,(float)p.y) < 10;
  }
   public void bite(Player p) {
    noLoop();
  }
}
