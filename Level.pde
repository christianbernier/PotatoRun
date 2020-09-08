






class Level { 
  int levelNumber;


  int numWalls;
  Wall[] walls;

  Goal goal;

  int numEnemies;
  Enemy[] enemies;

  PVector[] enemyStart;

  PVector playerStart;

  int numClickyButtons;
  ClickyButton[] clickyButtons;

  Level(int numberWalls, int numberEnemies, int numButtons) {
    this.numWalls = numberWalls;
    walls = new Wall[numberWalls];
    enemyStart = new PVector[numEnemies];
    enemies = new Enemy[numEnemies];
    this.numEnemies = numberEnemies;
    numClickyButtons = numButtons;
    clickyButtons = new ClickyButton[numClickyButtons];
  }
  Level(int numberWalls, int numberEnemies) {
    this.numWalls = numberWalls;
    walls = new Wall[numberWalls];
    enemyStart = new PVector[numEnemies];
    enemies = new Enemy[numEnemies];
    this.numEnemies = numberEnemies;
    numClickyButtons = 0;
    clickyButtons = new ClickyButton[numClickyButtons];
  }

  void addOutsideWalls() {
    for (int i = 0; i<this.numWalls; i++) {
      if (i == 0) {
        walls[i] = new Wall(7.5, height/2, 15, height);
      }//end if
      if (i == 1) {
        walls[i] = new Wall(width - 7.5, height/2, 15, height);
      }
      if (i == 2) {
        walls[i] = new Wall(width/2, height - 7.5, width, 15);
      }
      if (i == 3) {
        walls[i] = new Wall(width/2, 7.5, width, 15);
      }
    }//end for
  }

  void moveThings() {
    player.move();
    for (int i = 0; i < this.numEnemies; i++) {

        this.enemies[i].move();
        this.enemies[i].wallCollide();
      }
    }
  

  void drawThings() {
    this.goal.draw();
    player.draw();
    for (int i = 0; i<this.numWalls; i++) {
      this.walls[i].draw();
    }
    for (int i = 0; i < this.numEnemies; i++) {
      this.enemies[i].draw();
    }
    for (int i = 0; i < this.numClickyButtons; i++) {
      this.clickyButtons[i].draw();
    }
  }

  void resetLevel() {
    player.xPos = this.playerStart.x;
    player.yPos = this.playerStart.y;
    for (int i = 0; i < this.numEnemies; i++) {
      this.enemies[i].xPos = this.enemyStart[i].x;
      this.enemies[i].yPos = this.enemyStart[i].y;
      this.enemies[i].velocity = this.enemies[i].speed;
    }
  }//end addWalls
}

