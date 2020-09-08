Potato player;

//buttons are 0:w, 1:a, 2:s, 3:d
boolean[] buttons;
int numButtons;


Level level;


void setup() {
  size(1024, 640);
  background(54, 122, 255);
  level = new Menu();
  player = new Potato(level.playerStart);
  rectMode(CENTER);
  imageMode(CENTER);



  numButtons = 4;
  buttons = new boolean[numButtons];
  for (int i = 0; i<numButtons; i++) {
    buttons[i] = false;
  }
}//end draw()

void draw() {
  background(54, 122, 255);
  level.moveThings();
  level.drawThings();
}

void keyPressed() {
  if (key == 'w') {
    buttons[0] = true;
  }
  if (key == 'a') {
    buttons[1] = true;
  }
  if (key == 's') {
    buttons[2] = true;
  }
  if (key == 'd') {
    buttons[3] = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    buttons[0] = false;
  }
  if (key == 'a') {
    buttons[1] = false;
  }
  if (key == 's') {
    buttons[2] = false;
  }
  if (key == 'd') {
    buttons[3] = false;
  }
}

void changeLevel() {
  player.xPos = -1000;
  player.yPos = -1000;
  if (level.levelNumber == 0) {
    level = new Level1();
  } else if (level.levelNumber == 1) {
    level = new Level2();
  } else if (level.levelNumber == 2) {
    level = new Level3();
  } else if (level.levelNumber == 3) {
    level = new Level4();
  } else if (level.levelNumber == 4) {
    level = new Level5();
  } else if (level.levelNumber == 5) {
    level = new Level6();
  } else if (level.levelNumber == 6) {
    level = new Level7();
  } else if (level.levelNumber == 7) {
    level = new Level8();
  } else if (level.levelNumber == 8) {
    level = new Level9();
  } else if (level.levelNumber == 9) {
    level = new Level10();
  } else if (level.levelNumber == 10) {
    level = new Level11();
  } else if (level.levelNumber == 11){
    level = new WinMenu();
  } else {
    level = new Menu();
  }
  player.xPos = level.playerStart.x;
  player.yPos = level.playerStart.y;
} 

void mouseClicked() {
  if (level.levelNumber == 0) {
    changeLevel();
  }
}

