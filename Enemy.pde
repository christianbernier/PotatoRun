
class Enemy extends Sprite {
  PVector speed, velocity;

  Enemy(PVector startPos, PVector startSpeed) {
    super(64, 64, "enemy.png"); 
    this.speed = startSpeed;
    this.velocity = new PVector(this.speed.x, this.speed.y);


    this.type = "enemy";
    this.xPos = startPos.x; 
    this.yPos = startPos.y;
    this.updateSides();
  } 

  void move() {
        this.oldX = xPos;
    this.oldY = yPos;
    this.xPos += this.velocity.x;
    this.yPos += this.velocity.y;

    this.updateSides();
  }//end move

  void wallInteract(Wall wall) {
    this.wallStop(wall);


    if (this.velocity.x > 0) {
      this.velocity = new PVector(-this.speed.x, this.speed.y);
    } else if (this.velocity.x < 0) {
      this.velocity = new PVector(this.speed.x, this.speed.y);
    } 
    if (this.velocity.y > 0) {
      this.velocity = new PVector(this.speed.x, -this.speed.y);
    } else if (this.velocity.y < 0) {
      this.velocity = new PVector(this.speed.x, this.speed.y);
    }
  }//end wallstop
}

