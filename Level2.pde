

class Level2 extends Level { 

  Level2() {
    super(4, 1); 
    this.levelNumber = 2;
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
    this.enemyStart[i] = new PVector(width/2, height/2);
    eSpeed = new PVector(0, 4);
    enemies[i] = new Enemy(enemyStart[i], eSpeed);
  }
}
  }
  
}
