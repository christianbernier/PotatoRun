
class Level1 extends Level { 

  Level1() { 
    super(5, 0); 
    this.levelNumber = 1;
    this.goal = new Goal(82, 400);
    addOutsideWalls();
    addWalls();
    playerStart = new PVector(100, 100);
  }
  void addWalls() { 
    for (int i = 4; i<this.numWalls; i++) {
      if (i == 4) {
      }
      this.walls[i] = new Wall(300, height/2, 600, 15);
    } 
  }
}

