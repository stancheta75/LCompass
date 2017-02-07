//this deals with everything being displayed

//set up back button
void back() {
  fill(0);
  textSize(16); 
  text("Back", 451, 22);
  fill(255);
}

//displays answer options
void opDisp()
{ 
  textSize(16);
  text(aList[count2], 120, 160);
  text(aList[count2+1], 120, 270);
}

void progress()
{
  fill(250);
  rect(80, 410, 280, 20, 4);  
  int countLength =(count*40);
  rect(80, 420, countLength, 20, 4);
}

void onOpt() {
  //Resets 
  /*if ((count<qList.length)&&mouseX>70&&mouseX<100&&mouseY>140&&mouseY<170)
   {
   moveOn=false; 
   }*/

  //box 2
  if ((count<qList.length)&&mouseX>70&&mouseX<100&&mouseY>250&&mouseY<280)
  {
    moveOn=true;
  }

  //box 1
  if ((count<qList.length)&&mouseX>70&&mouseX<100&&mouseY>140&&mouseY<170) {
    moveOn=true;
  }
}