

class Menu extends Level { 

  Menu() {
    super(4, 0, 2); 
    this.levelNumber = 0;
    this.goal = new Goal(width/2, height/3*2);
    this.addOutsideWalls();
    this.addWalls();
    this.playerStart = new PVector(width/5, 220);
    this.enemyStart = new PVector[numEnemies];
    this.enemies = new Enemy[numEnemies];
    this.addEnemies();
    this.addButtons();

}
  void addWalls() { 

  }
  
  void addEnemies(){

  }
  
  void addButtons(){
    PVector buttonPos;
   for (int i = 0; i < this.numClickyButtons; i++){
    if (i == 0){
      buttonPos = new PVector(width/2, height/3*2);
     clickyButtons[i] = new ClickyButton(buttonPos, 1); 
    }
    if (i == 1){
     buttonPos = new PVector(width/2, height/3*2);
    clickyButtons[i] = new ClickyButton(buttonPos, 2); 
    }
   } 
  }
}

  

