class Level9 extends Level { 

  Level9() {
    super(10, 4); 
    this.levelNumber = 9;
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
        this.enemyStart[i] = new PVector(width/16*15, height/8);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
      if (i == 1) {
        this.enemyStart[i] = new PVector(width/2+150, height/2);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
            if (i == 2) {
        this.enemyStart[i] = new PVector(width/5*2, height/8*7);
        eSpeed = new PVector(4, 0);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
            if (i == 3) {
        this.enemyStart[i] = new PVector(width/32*3, height/2);
        eSpeed = new PVector(0, 4);
        enemies[i] = new Enemy(enemyStart[i], eSpeed);
      }
    }
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
        this.walls[i] = new Wall(width/2, 0, 15, 900);
      }
      if (i == 5) {
        this.walls[i] = new Wall(width/6, width/6*3, 15, 400);
      }
            if (i == 6) {
        this.walls[i] = new Wall(width/8*7, 540, 15, 300);
      }
            if (i == 7) {
        this.walls[i] = new Wall(width/4*3, height, 15, 900);
      }
            if (i == 8) {
        this.walls[i] = new Wall(width/7*6-41, height/4+25, 150, 15);
      }
                  if (i == 9) {
        this.walls[i] = new Wall(0, height/4, height/2+100, 15);
      }
    }
  }
}//end class

