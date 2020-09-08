class Wall extends Sprite {
  float width, height;
  String allignment;




  Wall(float x, float y, float w, float h) {
    super(w, h);
    this.xPos = x; 
    this.yPos = y;
    this.width = w; 
    this.height = h;

    this.updateSides();
  }

  void draw() {
    rect(this.xPos, this.yPos, this.width, this.height);
  }
}//end Sprite


