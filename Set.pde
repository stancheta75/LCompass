
void assign()
  //Assigns variables to text files
{
  qList=loadStrings("Data/MBQList.txt"); 
  catList=loadStrings("Data/MBFieldList.txt");
  aList=loadStrings("Data/MBAList.txt");
}

void shapes() {
  rect(70, 140, 30, 30, 7); 
  rect(70, 250, 30, 30, 7);
}

void mouseOver() {
  //Shading when mouse is over boxes
  //box 1
  if ((count<qList.length)&&mouseX>70&&mouseX<100&&mouseY>140&&mouseY<170) {
    fill(120);
    rect(70, 140, 30, 30, 7);
    boxes=true;
  }   
  if ((count<qList.length)&&(boxes==true)&&(mouseX<70||mouseX>100||mouseY<250||mouseY>280))
  {
    fill(255);
    rect(70, 250, 30, 30, 7);
     }

  //box2
  if ((count<qList.length)&&mouseX>70&&mouseX<100&&mouseY>250&&mouseY<280) {
    fill(120);
    rect(70, 250, 30, 30, 7);
      boxes=true;
  }   
  if ((count<qList.length)&&(boxes==true)&&(mouseX<70||mouseX>100||mouseY<140||mouseY>170))
  {
    fill(255);
    rect(70, 140, 30, 30, 7);
  }
}

//progress bar