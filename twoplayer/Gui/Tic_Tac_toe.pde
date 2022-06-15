//Global Varabiles 




void setup() {
Guisteup();  
quitdraw();  
  
}


void draw() {
  Guidraw();
  noStroke();
  line(mouseX, mouseY, 50, 50);


  

  
}

void keyPressed() {
}
void mousePressed() {
  quitPressed();
}

public void settings() {
  fullScreen();
}
