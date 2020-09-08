
class Goal extends Sprite { 

  Goal(float xPosition, float yPosition) {
    super(64, 64, "finish.png");
    this.type = "goal";
    this.xPos = xPosition; 
    this.yPos = yPosition;
    this.updateSides();
  }
  
  
  
}

