
class Sprite { 
  float xPos, yPos;
  float width, height;
  float top, bottom, left, right;
  String type;
  String imageName;
  PImage img;
  float oldX, oldY;

  Sprite( float w, float h, String image) {

    this.width = w; 
    this.height = h;
    this.imageName = image;

    this.img = loadImage("images/" + imageName);

    this.img.resize(int(this.width), int(this.height));
  }

  Sprite(float w, float h) {
    this.width = w; 
    this.height = h;
  }



  void draw() {
    image(this.img, this.xPos, this.yPos);
  }

  void updateSides() {
    this.top = this.yPos - this.height/2;
    this.bottom = this.yPos + this.height/2;
    this.left = this.xPos - this.width/2;
    this.right = this.xPos + this.width/2;
  }

  boolean checkCollide(Sprite other) {
    float top, bottom, left, right;
    top = this.yPos - this.height/2;
    bottom = this.yPos + this.height/2;
    left = this.xPos - this.width/2;
    right = this.xPos + this.width/2;

    if (
    (this.bottom > other.top) &&
      (this.top < other.bottom) &&
      (this.left < other.right) &&
      (this.right > other.left)
      ) {
      return true;
    } else {
      return false;
    }//end if elsestatement
  }//end checkcollide


    void wallCollide() {

    fill(255);

    for (int i = 0; i < level.numWalls; i++) {
      if (this.checkCollide(level.walls[i])) {
        fill(255, 0, 0, 200);
        this.wallInteract(level.walls[i]);
      }//end if
    }//end for loop
  }//end wallCollide

  void wallInteract(Wall wall) {
  }

  void wallStop(Wall wall) { 
    float deltaX, deltaY;
    float oldTop, oldBottom, oldLeft, oldRight;



    deltaX = 0; 
    deltaY = 0;

    //Change deltaX
    oldTop = this.oldY - this.height/2;
    oldBottom = this.oldY + this.height/2;
    oldLeft = this.oldX - this.width/2;
    oldRight = this.oldX + this.width/2;

    if ((this.oldX < wall.left)&&
      (oldBottom > wall.top)&&
      (oldTop < wall.bottom)
      ) {

      deltaX = wall.left - this.right;
    }


    
    if ((this.oldX > wall.right)&&
      (oldBottom > wall.top) &&
      (oldTop < wall.bottom)
      ) {

      deltaX = wall.right - this.left;
    }
    if ((this.oldY < wall.top) &&
      (oldLeft < wall.right)&&
      (oldRight > wall.left)
      ) {
      deltaY = wall.top - this.bottom;
    }
    if ((this.oldY > wall.bottom) &&
      (oldLeft < wall.right) &&
      (oldRight > wall.left)
      ) {
      deltaY = wall.bottom - this.top;
    }


    this.xPos += deltaX;
    this.yPos += deltaY;
  }//end wallstop
}

