//Global Varaiables 
String quit= "Quit", Impossible= "Insane";
PFont titlefont;
color green =#2AE53E , gold= #FABF28, white=#FFFFFF, black =#000000 , red=#E33535;
color purple = #2C08FF, blue= #2C40E5; //Ink
Boolean twoplayermode = false, twoAImode = false;
Boolean start = false;
float resetX, resetY,resetWidth, resetHeight;
float scoreBoardX, scoreBoardY, scoreBoardWidth, scoreBoardHeight;
float[] AreaX = new float[13];
float[] AreaY= new float [13];
float TitleX,TitleY,TitleWidth, TitleHeight;
String Title= "My awsome Tic Tac Toe";
float AreaWidth, AreaHeight;
float lineAX1, lineAY1, lineBX1, lineBY1;
float lineAX2, lineAY2, lineBX2, lineBY2;
float lineAX3, lineAY3, lineBX3, lineBY3;
float lineAX4, lineAY4, lineBX4, lineBY4;
float mediumX, mediumY, mediumWidth, mediumHeight;
float InsaneX, InsaneY, InsaneWidth, InsaneHeight;
float scoreXnameX, scoreYX, scoreWidthX,scoreHeightX;
float scoreXO, scoreYO, scoreWidthO, scoreHeightO;
float NoobX, NoobY, NoobWidth, NoobHeight;
float scoreA, scoreB, scoreWidth, scoreHeight, scoreAX, scoreBX;
float scoreAO, scoreBO, scoreWidthXO, scoreHeightXO;
float scoreXnamex, scoreYnameX, scoreXvarX, scoreYvarX;
float scoreXnameO, scoreYnameO, scoreXvarO, scoreYvarO;
void setup() {
  textSetup();
  background(black);
  fullScreen(); 
  titlefont=createFont("Wide Latin", 55);
  //
  TitleX= width*0.50/3;
  TitleY=height*0/3;
  TitleWidth=width*6/10;
  TitleHeight=height*1/10;
  //
  resetX = width*0.0/5;
  resetY = height*0/3;
  resetWidth = width*2/10;
  resetHeight = height*1/10;
  //
  AreaWidth = width*3/15;
  AreaHeight = height*3/15;
  //
  lineAX1 = lineBX1 = width * 1/3;
  lineAY1 = height * 1.1/3;
  lineBY1 = height;
  lineAX2 = lineBX2 = width * 2/3;
  lineAY2 = height * 1.1/3;
  lineBY2 = height;
  lineAX3 = width *0.5/4;
  lineBX3 = width*3.5/4;
  lineAY3 = lineBY3 = height * 3/5;
  lineAX4 = width *0.5/4;
  lineBX4 = width*3.5/4;
  lineAY4 = lineBY4 = height * 4/5;
  //
  AreaX[1] = AreaX[4] = AreaX[7]= AreaX[10]=width*0.85/3;
  AreaX[2] = AreaX[5] = AreaX[8]=AreaX[11]= width*1.45/3;
  AreaX[3] = AreaX[6] = AreaX[9]=AreaX[12] =width*2/3;
  //
    AreaY[1] = AreaY[2] = AreaY[3]= height*0.5/3;
    AreaY[4] = AreaY[5] = AreaY[6]= height*1/3;
    AreaY[7] = AreaY[8] = AreaY[9]= height*1.5/3;
    AreaY[10] = AreaY[11]= AreaY[12]= height*2/3;
    //
    mediumX= width*1;
    mediumY = height * 0.30/3;
    mediumWidth = width*2/15;
    mediumHeight= height*2/15;
    //
    InsaneX = width*0;
  InsaneY = height * 0.30/3;
  InsaneWidth = width* 2/15;
  InsaneHeight = height*2/15;
  //
scoreBoardX= width*1.3/3;
scoreBoardY = height*0.30/3;
scoreBoardWidth= width* 3/15;
scoreBoardHeight= height*2/15;
//
NoobX = width*0;
NoobY= height*0.73/3;
NoobWidth=width*2/15;
NoobHeight=height*2/15;
//

}





void draw() {
  //hover();
  titles();
textDraw(playerMode, titleFont, height, gold, CENTER, TOP, scoreA, InsaneY, scoreWidth, InsaneHeight);
    stroke(gold);
    fill(black);
  rect(TitleX,TitleY,TitleWidth, TitleHeight);
  rect(1875,0,50,50);// Quit button
  rect(resetX, resetY,resetWidth, resetHeight);  
  //
  if ( mouseX>1875 && mouseX<1875+ 50 && mouseY>0 && mouseY<0+50 ) {
    fill(red);
  rect(1875,0,50,50);   
  }else {
    fill(black);
rect(1875,0,50,50);} 
//
    //
     if (mouseX >= resetX  && mouseX <= resetX+resetWidth && mouseY >= scoreYnameX && mouseY <= (scoreYnameX+(scoreHeightXO*0.5)) ) {
       fill(red);
    noStroke();
    rect(resetX, scoreYnameX, resetWidth, scoreHeightXO*0.5);
    stroke(1);
    
  } else {
    noStroke();
    rect(resetX, scoreYnameX, resetWidth, scoreHeightXO*0.5);
  }
   //
    rect(InsaneX, InsaneY, InsaneWidth, InsaneHeight);
  if (mouseX >= InsaneX  && mouseX <= InsaneX+InsaneWidth && mouseY >= InsaneY && mouseY <= InsaneY+InsaneHeight) {
    fill(red);
    noStroke();
    rect(InsaneX, InsaneY, InsaneWidth, InsaneHeight);
    stroke(1);
    textDraw(impossible, titleFont, height, black, CENTER, CENTER,InsaneX, InsaneY, InsaneWidth, InsaneHeight);
  } else {
    fill(gold);
    noStroke();
    rect(InsaneX, InsaneY, InsaneWidth, InsaneHeight);
    stroke(1);
    textDraw(impossible, titleFont, height, black, CENTER, CENTER, InsaneX, InsaneY, InsaneWidth, InsaneHeight);
  }
   
   
   
   
   //
      rect(scoreA, InsaneY, scoreWidth, InsaneHeight);
  if (twoPlayer2 == false && twoPlayerAI == false && mouseX >= scoreA  && mouseX <= InsaneY+scoreWidth && mouseY >= InsaneY && mouseY <= InsaneY+InsaneHeight) {
    fill(red);
    noStroke();
    rect(scoreA, InsaneY, scoreWidth, InsaneHeight);
    stroke(1);
    textDraw(playerMode, titleFont, height, black, CENTER, TOP, scoreA, InsaneY, scoreWidth, InsaneHeight);
  } else {
    fill(black);
    noStroke();
    rect(scoreA, InsaneY, scoreWidth, InsaneHeight);
    stroke(1);
    textDraw(playerMode, titleFont, height, black, CENTER, TOP, scoreA, InsaneY, scoreWidth, InsaneHeight);
  }
  
      //
  fill(gold);
  textAlign (CENTER, CENTER);
  textFont(titlefont,25);
 text(quit,1875,0,50,50);
 fill(255);
  ///
  fill(gold);
  textFont(titlefont,25);
  textAlign(CENTER, CENTER);
  text(title,TitleX,TitleY,TitleWidth, TitleHeight);
  fill(423);
  //
   fill(gold);
  textFont(titlefont,25);
  textAlign(CENTER, CENTER);
  text(reset,resetX, resetY,resetWidth, resetHeight);
  fill(255);
   
  //
  
  fill(black);
  stroke(gold);
  rect(InsaneX, InsaneY, InsaneWidth, InsaneHeight);
  rect(mediumX, mediumY, mediumWidth, mediumHeight);
  rect(NoobX, NoobY, NoobWidth, NoobHeight);
  rect(scoreBoardX, scoreBoardY, scoreBoardWidth, scoreBoardHeight);
 
  //
  stroke(gold);
 line(lineAX1, lineAY1, lineBX1, lineBY1);
 stroke(gold);
 line(lineAX2, lineAY2, lineBX2, lineBY2);
 stroke(gold);
 line(lineAX3, lineAY3, lineBX3, lineBY3);
 stroke(gold);
 line(lineAX4, lineAY4, lineBX4, lineBY4);
 stroke(black);}




void keyPressed() {
}



void mousePressed() {
  
  println(mouseX,mouseY);
  if ( mouseX>=1875 && mouseX<=1875+ 50 && mouseY>=0 && mouseY<=0+750 ) {
  
  exit();}
  //
  if(mouseX>=resetX && mouseX<=resetX+resetWidth && mouseY>=resetY && mouseY<=resetY+resetHeight){
    clear();
  }
  //
  if (start == false && mouseX >= scoreA  && mouseX <= InsaneY+scoreWidth && mouseY >= InsaneY && mouseY <= InsaneY+InsaneHeight) {
    start = true;
  }
  if (start == true) {
    twoPlayerBoolean();
  }
  if (start = true && twoPlayer2 == true || twoPlayerAI == true) {
    clickXO();
  }

}
