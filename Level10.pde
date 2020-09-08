class Level10 extends Level { 

  Level10() {
    super(8, 3); 
    this.levelNumber = 10;
    this.goal = new Goal(width/2+350, height/8*7);
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
        this.enemyStart[i] = new PVector(width/16*15-125, height/8);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/2+150, height/2-150);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
            if (i == 2) {
        this.enemyStart[i] = new PVector(width/5*2-100, height/8*7);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/2, 100, 15, 200);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/2, height/3+130, 550, 15);
      }
            if (i == 6) {
        this.walls[i] = new Wall(width/2, 500, 15, 200);
      }
            if (i == 7) {
        this.walls[i] = new Wall(width/4, height/3+130, 200, 15);
      }
    }
  }
}//end class

