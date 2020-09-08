class Level8 extends Level { 

  Level8() {
    super(9, 3); 
    this.levelNumber = 8;
    this.goal = new Goal(width/2+100, height/8*7);
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
        this.enemyStart[i] = new PVector(width/16*15, height/8);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/4*3, height/18*13);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
            if (i == 2) {
        this.enemyStart[i] = new PVector(width/5*2, height/2);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/2, height-100, 15, height/2);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/2+148, height/2+68, width/2-200, 15);
      }
            if (i == 6) {
        this.walls[i] = new Wall(width/8*7, height/2, 15, height/2);
      }
            if (i == 7) {
        this.walls[i] = new Wall(width/2-242, 0, 15, height/2+400);
      }
            if (i == 8) {
        this.walls[i] = new Wall(width/2-100, height/4, height/2-50, 15);
      }
    }
  }
}//end class

