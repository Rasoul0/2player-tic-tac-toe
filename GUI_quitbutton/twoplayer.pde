Boolean twoPlayer2 = false, twoPlayerAI = false;

void twoPlayerBoolean() {
  if (twoPlayer2 == false && mouseX >= scoreA  && mouseX <= InsaneY+scoreWidth && mouseY >= InsaneY && mouseY <= InsaneY+InsaneHeight) {
    twoPlayer2 = true;
    twoPlayerAI = false;
  } else if (twoPlayerAI == false && mouseX >= scoreA  && mouseX <= InsaneY+scoreWidth && mouseY >= InsaneY && mouseY <= InsaneY+InsaneHeight) {
    twoPlayer2 = false;
    twoPlayerAI = true;
  }
}

void twoPlayerGame() {
  if (twoPlayer2 == true) {
    fill(gold);
    noStroke();
    rect(scoreA, InsaneY, scoreWidth, InsaneHeight);
    stroke(1);
    textDraw(playerMode2, titleFont, height, black, CENTER, TOP, scoreA, InsaneY, scoreWidth, InsaneHeight);
  }
  if (twoPlayerAI == true) {
    fill(gold);
    noStroke();
    rect(scoreA,InsaneY, scoreWidth, InsaneHeight);
    stroke(1);
    textDraw(playerModeAI, titleFont, height, black, CENTER, CENTER, scoreA, InsaneY, scoreWidth,InsaneHeight);
  }
}
void play2player() {
  //Current Procedure
  println("Play two player");
  drawXO();
  Boolean win = winCheck();
  if(win == true) winDraw();
}

void twoPlayerKey() {
  if ( twoPlayer2 == true) {
    play2player();
  } else if (twoPlayerAI == true) {
    //println("Now playing 2-Player AI");
  } //should reset all varaibles with 2-Player
}
