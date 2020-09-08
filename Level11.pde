class Level11 extends Level { 

  Level11() {
    super(7, 3); 
    this.levelNumber = 11;
    this.goal = new Goal(width/10*9, 100);
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
        this.enemyStart[i] = new PVector(width/18, height/10*9);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/4+10, height/10);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
            if (i == 2) {
        this.enemyStart[i] = new PVector(width/2+10, height/10*9);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/4, 0, 15, height+360);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/2, 460, 15, height-100);
      }
            if (i == 6) {
        this.walls[i] = new Wall(width/4*3, 0, 15, height+360);
      }
    }
  }
}//end class

