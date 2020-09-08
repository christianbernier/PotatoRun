

class Level4 extends Level { 

  Level4() {
    super(4, 2); 
    this.levelNumber = 4;
    this.goal = new Goal(924, 540);
    this.addOutsideWalls();
    this.addWalls();
    this.playerStart = new PVector(100, 100);
    this.enemyStart = new PVector[numEnemies];
    this.enemies = new Enemy[numEnemies];
    this.addEnemies();

}
  void addWalls() { 

  }
  
  void addEnemies(){
    PVector eSpeed;
    for ( int i = 0; i < numEnemies; i++){
  if (i == 0) {
    this.enemyStart[i] = new PVector(width/2, height/2+100);
    eSpeed = new PVector(0, 4);
    enemies[i] = new Enemy(enemyStart[i], eSpeed);
  }
    if (i == 1) {
    this.enemyStart[i] = new PVector(width/2, height/2-100);
    eSpeed = new PVector(0, 4);
    enemies[i] = new Enemy(enemyStart[i], eSpeed);
  }
}
  }
  
}
