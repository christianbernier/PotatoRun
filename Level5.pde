class Level5 extends Level { 

  Level5() {
    super(6, 2); 
    this.levelNumber = 5;
    this.goal = new Goal(924, 540);
    this.addOutsideWalls();
    this.addWalls();
    this.playerStart = new PVector(100, 100);
    this.enemyStart = new PVector[numEnemies];
    this.enemies = new Enemy[numEnemies];
    this.addEnemies();
  }


  void addEnemies() {
    PVector eSpeed;
    for ( int i = 0; i < numEnemies; i++) {
      if (i == 0) {
        this.enemyStart[i] = new PVector(width/4, height/8*7);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/4*3, height/5);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/3, 100, 15, 700);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/3*2, 540, 15, 700);
      }
    }
  }
}//end class

