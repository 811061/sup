public class Player{
public int x,y,vx,vy,speed;

//constructor
  public Player(){
  x = width / 2;
  y = height / 2;
  speed = 2;
  
  
  }
  public void show(){
  x+= vx;
  y+= vy;
    fill(256,97,165);
    circle(x,y,50);
  }
  
    public void moveUp() {
   vy = -speed;
  }
  
  public void moveDown() {
    vy = +speed;
  }
  
  public void moveLeft() {
    vx = -speed;
  }
  
  public void moveRight() {
    vx = +speed;
  }

}
