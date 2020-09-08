

class Level3 extends Level { 

  Level3() {
    super(5, 1); 
    this.levelNumber = 3;
    this.goal = new Goal(100, 540);
    this.addOutsideWalls();
    this.addWalls();
    this.playerStart = new PVector(100, 100);
    this.enemyStart = new PVector[numEnemies];
    this.enemies = new Enemy[numEnemies];
    this.addEnemies();

}

  
  void addEnemies(){
    PVector eSpeed;
    for ( int i = 0; i < numEnemies; i++){
  if (i == 0) {
    this.enemyStart[i] = new PVector(width/4*3, height/2);
    eSpeed = new PVector(0, 4);
    enemies[i] = new Enemy(enemyStart[i], eSpeed);
  }
}
  }
   void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
      }
      this.walls[i] = new Wall(300, height/2, 600, 15);
    } 
  } 
  
}//end class
