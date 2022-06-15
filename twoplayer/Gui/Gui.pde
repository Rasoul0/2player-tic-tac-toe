//Global varaibles 
float InsaneX, InsaneY, InsaneWidth, InsaneHeight;
float quitX, quitY, quitWidth, quitHeight;

PFont titlefont;
String impossible ="Insane mode";
String quit = "Quit";
color black = #030202, red= #FF0303, gold=#D3BC37 ;
void Guisteup() {
  background(black);
  titlefont=createFont("Wide Latin", 55);
  InsaneX = width*0;
  InsaneY = height * 0.30/3;
  InsaneWidth = width* 2/15;
  InsaneHeight = height*2/15;
  //
  quitX= width*2.9/3;
  quitY=height*0/3;
  quitWidth=width*0.5/10;
  quitHeight =height*0.5/10;
}

void Guidraw() {
 rect( InsaneX, InsaneY, InsaneWidth, InsaneHeight); 
  //
  fill(black);
  textFont(titlefont,15);
  textAlign(CENTER, CENTER);
   text(quit,quitX, quitY, quitWidth, quitHeight);
    fill(255);
    //
 rect( quitX, quitY, quitWidth, quitHeight);
}
