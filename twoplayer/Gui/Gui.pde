//Global varaibles 
float InsaneX, InsaneY, InsaneWidth, InsaneHeight;
float quitX, quitY, quitWidth, quitHeight;

PFont titlefont;
String impossible ="Insane mode";
color black = #030202;
void Guisteup() {
  titlefont=createFont("Wide Latin", 55);
  InsaneX = width*0;
  InsaneY = height * 0.30/3;
  InsaneWidth = width* 2/15;
  InsaneHeight = height*2/15;
  //
  quitX= width*1/3;
  quitY=height*1/3;
  quitWidth=width*1/15;
  quitHeight =height*1/15;
}

void Guidraw() {
  
 rect( InsaneX, InsaneY, InsaneWidth, InsaneHeight); 
  //
  fill(black);
  textFont(titlefont,15);
  textAlign(CENTER, CENTER);
  text(impossible,InsaneX, InsaneY, InsaneWidth, InsaneHeight);
  fill(255);
  //
 rect( quitX, quitY, quitWidth, quitHeight);
}
