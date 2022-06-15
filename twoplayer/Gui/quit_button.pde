void quitdraw(){
  
if ( mouseX>quitX && mouseX<quitX+ quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
    fill(red);
 rect( quitX, quitY, quitWidth, quitHeight);
  }else {
    fill(black);
 rect( quitX, quitY, quitWidth, quitHeight);
  }
  fill(gold);
 textFont(titlefont,25);
  textAlign(CENTER, CENTER);
   text(quit,quitX, quitY, quitWidth, quitHeight);
    fill(255);

}



void quitPressed(){


if ( mouseX>quitX && mouseX<quitX+ quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
  exit();
}
}
