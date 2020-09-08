
class Potato extends Sprite { 

  float xSpeed, ySpeed;
  float moveSpeed;



  Potato(PVector StartPosition) {
    super(50, 100, "potato.png"); //xPos, yPos, Width, Height
    this.xPos = StartPosition.x; 
    this.yPos = StartPosition.y;
    this.xSpeed = 0; 
    this.ySpeed = 0;
    this.moveSpeed = 5;
    this.oldX = xPos; 
    this.oldY = yPos;

    this.updateSides();
  }

  void move() {
    
    this.oldX = this.xPos; 
    this.oldY = this.yPos;
    if (buttons[0] || buttons[2]) {
      if (buttons[0]) {
        this.ySpeed = moveSpeed * -1;
      }
      if (buttons[2]) {
        this.ySpeed = moveSpeed * 1;
      }
    } else {
      this.ySpeed = 0;
    }
    if (buttons[1] || buttons[3]) {
      if (buttons[1]) {
        this.xSpeed = moveSpeed * -1;
      }
      if (buttons[3]) {
        this.xSpeed = moveSpeed * 1;
      }
    } else {
      this.xSpeed = 0;
    }

    this.oldX = this.xPos;
    this.oldY = this.yPos;

    this.xPos += this.xSpeed;
    this.yPos += this.ySpeed;

    this.updateSides();

    this.wallCollide();
    this.goalCollide();
    this.enemyCollide();
  }

  void goalCollide() {
    if (checkCollide(level.goal)) {
      changeLevel();
    }
  }

void wallInteract(Wall wall){
 this.wallStop(wall); 
}//end wallinteract 

  void enemyCollide() {
    for (int i = 0; i < level.numEnemies; i++) {
      if (checkCollide(level.enemies[i])) {
        level.resetLevel();
      }
    }
  }//end enemy collide 
  

}//end class

