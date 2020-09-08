class ClickyButton extends Sprite {
  PFont menuFont;
  PFont playFont;
  int choice;
  

  ClickyButton(PVector pos, int textChoice) {
    super(250, 100);
    this.choice = textChoice;
    this.type = "clickyButton";
    this.xPos = pos.x;
    this.yPos = pos.y;
    menuFont = createFont("Aharoni-Bold-128", 128);
    playFont = createFont("Aharoni-Bold-35", 35);
    textAlign(CENTER, CENTER);
    textAlign(CENTER, CENTER);
  }

  void draw() {
    if (choice == 1){
      textFont(menuFont);
      fill(0);
    text("P    TATO RUN!!", 512, 200);
      }
      if (choice == 2){
        fill(0, 255, 0);
    rect(this.xPos, this.yPos, this.width, this.height, 100);
    
    fill(0, 0, 255);
    textFont(playFont);
    text("PLAY!!", xPos, yPos);
      }
      if (choice == 3){
        textFont(menuFont);
        fill(0);
       text("YOU WIN!!", 512, 200);
      } 
    
  }
}

