class WinMenu extends Level { 

  WinMenu() {
    super(4, 0, 1); 
    this.levelNumber = 11;
    this.goal = new Goal(width/2, height/3*2);
    this.addOutsideWalls();
    this.addWalls();
    this.playerStart = new PVector(width/5, 320);
    this.enemyStart = new PVector[numEnemies];
    this.enemies = new Enemy[numEnemies];
    this.addEnemies();
    this.addWinButtons();

}
  void addWalls() { 

  }
  
  void addEnemies(){

  }
  
  void addWinButtons(){
    PVector WinbuttonPos;
   for (int i = 0; i < this.numClickyButtons; i++){
    if (i == 0){
      WinbuttonPos = new PVector(width/2, height/3*2);
     clickyButtons[i] = new ClickyButton(WinbuttonPos, 3); 
    }
   } 
  }
}

  


