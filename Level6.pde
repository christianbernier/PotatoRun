class Level6 extends Level { 

  Level6() {
    super(6, 2); 
    this.levelNumber = 6;
    this.goal = new Goal(100, 100);
    this.addOutsideWalls();
    this.addWalls();
    this.playerStart = new PVector(width/2, height/8);
    this.enemyStart = new PVector[numEnemies];
    this.enemies = new Enemy[numEnemies];
    this.addEnemies();
  }


  void addEnemies() {
    PVector eSpeed;
    for ( int i = 0; i < numEnemies; i++) {
      if (i == 0) {
        this.enemyStart[i] = new PVector(width/4*3, height/2);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/4, height/2);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/2+50, height/2, height/2, 15);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/2-110, height/2-200, 15, height/2+95);
      }
    }
  }
}//end class

