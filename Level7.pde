class Level7 extends Level { 

  Level7() {
    super(6, 3); 
    this.levelNumber = 7;
    this.goal = new Goal(924, 100);
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
        this.enemyStart[i] = new PVector(width/4*3, height/5*4);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/7*4, height/2);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
            if (i == 2) {
        this.enemyStart[i] = new PVector(width/4*3, height/4);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/2+400, height/2, height/2+150, 15);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/2-100, 0, 15, height+300);
      }
    }
  }
}//end class

