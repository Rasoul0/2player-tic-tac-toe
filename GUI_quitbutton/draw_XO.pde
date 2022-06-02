Boolean[] clickX = new Boolean[9];
Boolean[] clickO = new Boolean[9];
Boolean[] noDraw = new Boolean[9];
int drawCounter; //If odd, X-turn; if even, O-turn (uses modulus to evalaute even and odd number, basic algorithm

void drawXO() {
  int XOdraw = drawCounter % 2;
  for (int i=0; i<noDraw.length; i++) {
    if ( noDraw[i]==true) {
      if (clickX[i]==true) {
        noStroke();
        rect( AreaX[i], AreaY[i], AreaWidth, AreaHeight);
        textDraw(x, titlefont, height, black, CENTER, CENTER,  AreaX[i], AreaY[i], AreaWidth, AreaHeight);
        stroke(1);
        //lines();
      } else if (clickO[i]==true) {
        noStroke();
        rect (AreaX[i], AreaY[i], AreaWidth, AreaHeight);
        textDraw(o, titleFont, height, black, CENTER, CENTER, AreaX[i], AreaY[i], AreaWidth, AreaHeight);
        stroke(1);
        //lines();
      } else {
      }
    }
  }
}

void clickXO() {
  //rect(spaceX1, spaceY1, spaceWidth, spaceHeight);
  int XOclick;
  for (int i=0; i<noDraw.length; i++) {
    if (mouseX>AreaX[i] && mouseX<AreaX[i]+AreaWidth && mouseY>AreaY[i] && mouseY<AreaY[i]+AreaHeight ) {
      drawCounter++; //drawCounter=drawCounter+1
      XOclick = drawCounter % 2;
      if (XOclick == 1) {
        clickX[i] = true;
        noDraw[i] = true;
      } else if (XOclick == 0) {
        clickO[i] = true;
        noDraw[i] = true;
      } else {
      }
    }
  }
}
