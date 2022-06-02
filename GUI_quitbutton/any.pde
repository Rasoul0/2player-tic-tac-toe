Boolean winCheck() {
  Boolean win = false;
  // i=0,3,6; j=1
  for (int i=0; i<7; i=i+3) {
    int j = 1;
    if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
    if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  }
  //i=0,1,2; j=3
  for (int i=0; i<3; i++) {
    int j = 3;
    if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
    if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  }
  // i=0; j=4
  int i = 0;
  int j = 4;
  if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
  if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  //
   i=2; j=2;
  i = 2;
  j = 2;
  if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
  if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  //
  //Should be X and O
  if (clickX[0]==true && clickX[1]==true && clickX[2] ) win = true;
  if (clickX[3]==true && clickX[4]==true && clickX[5] ) win = true;
  if (clickX[6]==true && clickX[7]==true && clickX[8] ) win = true;
  if (clickX[0]==true && clickX[3]==true && clickX[6] ) win = true;
  if (clickX[1]==true && clickX[4]==true && clickX[7] ) win = true;
  if (clickX[2]==true && clickX[5]==true && clickX[8] ) win = true;
  if (clickX[0]==true && clickX[4]==true && clickX[8] ) win = true;
  if (clickX[2]==true && clickX[4]==true && clickX[6] ) win = true;
  
  return win;
}

void winDraw() {
  println("You win");
  noLoop(); //Must restart game here
}
