//Global varaibles 
float InsaneX, InsaneY, InsaneWidth, InsaneHeight;
PFont titlefont;
String impossible ="Insane mode";
color black = #030202;
void Guisteup() {
  titlefont=createFont("Wide Latin", 55);
  InsaneX = width*0;
  InsaneY = height * 0.30/3;
  InsaneWidth = width* 2/15;
  InsaneHeight = height*2/15;
}

void Guidraw() {
  
 rect( InsaneX, InsaneY, InsaneWidth, InsaneHeight); 
  //
  fill(black);
  textFont(titlefont,15);
  textAlign(CENTER, CENTER);
  text(impossible,InsaneX, InsaneY, InsaneWidth, InsaneHeight);
  fill(255);
}
