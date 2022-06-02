//Global Variable
PFont titleFont;
String[] fontList = PFont.list(); //To list all fonts available on system
float titleWidth, titleHeight;
String dark = "Dark Mode", easy = "Noob", medium = "medium", impossible = "Insane";
String reset = "Reset", scoreboard = "Scoreboard", playerMode = "Player Mode";
String playerMode2 = "2-Player Mode", playerModeAI = "Against the Computer";
String x="X:", o="O:";
String title;
void textSetup() {
  titleFont = createFont ("Harrington", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  title = "My Awsome Tic-Tac-Toe Game";
  titleWidth = width * 1/2;
  titleHeight = height * 1/10;
  quit = "X";

  printArray(fontList); //For listing all possible fonts to choose, then createFont
  
  
}

void textDraw(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); //Purple Ink, copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE;
  //Parameters change depending on font and serifs
  if (string.length() >= 14) {
    fontSize = textCalculator(height, string, rectWidth);
  } 
  else {
    fontSize = fontSize * 0.05;
  }
  textFont(font, fontSize); //Change the number until it fits, largest font size
  text(string, rectX, rectY, rectWidth, rectHeight); //add rect() parameters
  fill(255); //Reset to white for rest of the program
}

float textCalculator(float size, String string, float rectWidth) {
  textSize(size);
  while ( textWidth(string) > rectWidth ) {
    size = size * 0.99;
    textSize(size);
  }
  return size; //Purpose of Calculator
}
