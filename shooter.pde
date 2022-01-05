 WallPiece w1;
 Laser[] lasers = new Laser[100000];
 WallPiece[] wps = new WallPiece[20];
int lasersFired = 0;
Player player;
public void setup() {
  size(400,800);
  player = new Player();
  spawnWallPieces();
   w1 = new WallPiece((int)(Math.random()*width),(int)(Math.random()*height));
}

public void draw() {
  background(0);
  if (mousePressed) fireLaser();
  player.show();
  w1.show(); //call the show method
  w1.move();
  w1.attack(w1, player);

  for (int i = 0; i < lasers.length; i++) {
    if (lasers[i] != null && lasers[i].active) {
      lasers[i].show();
      lasers[i].move();
      for (int j = 0; j < wps.length; j++) {
        WallPiece oneWP = wps[j];
        if (oneWP.active)
          lasers[i].collides(oneWP);
      }
    }
  }
  
  for (int i = 0; i < wps.length; i++) {
     if (wps[i] != null && wps[i].active) {
       wps[i].show();
     }
  }
}

public void fireLaser() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[lasersFired] = laser;
  lasersFired++;
}

public void spawnWallPieces() {
    for (int i = 0; i < wps.length; i++) {
        wps[i] = new WallPiece((int)random(0,400), (int) random(0,800)); //cast floats as ints 
    } 
}

public void keyPressed() {
  if (key == 'd') {
    player.moveRight();
  }
  if (key == 'a') {
    player.moveLeft();
  }
  if (key == 'w') {
    player.moveUp();
  }
  if (key == 's') {
    player.moveDown();
  }
}
public void keyReleased(){
if (key == 'd') {
player.vx = 0;
}
if (key == 'a') {
player.vx = 0;
}
if (key == 'w') {
player.vy = 0;
}
if (key == 's') {
player.vy = 0;
}
}
