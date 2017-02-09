import java.util.*;
import java.util.Scanner;
import java.util.Arrays;
//Instead of delimiting field array with commas, just put separate numbers on its own line

//load files in setup?
String qList[];
String catList[];
String aList[];
String aList2[];
int count=0;
int count2=0;
int e, i, s, n, f, t, j, p;
boolean boxes=false;
PImage back;
boolean moveOn = false;
boolean onO1=false;
boolean onO2=false;


void setup() {
  assign();
  //back= loadImage("goBack.png");
  System.out.println(Arrays.toString(qList));
  System.out.println(Arrays.toString(catList));
  System.out.println(Arrays.toString(aList));

  size(500, 500);
  background(50);
  textSize(26);
  text("Phase 1: Personality Analysis", 63, 250);
}

void draw() {

  mouseOver();
}

void mouseClicked() { 
  if (count==0)
  { 
    background(50); 
    rect(445, 5, 50, 25);
    shapes();
    opDisp();
    progress();
    textSize(20);
    text(qList[0], 30, 50);
    onOpt();
    //rect might go back here
    back();


    if (moveOn==true) {
      {
        count++;
        count2+=2;
        moveOn=false;        
        System.out.println("count: "+count +" count2: " +count2 + " cList: " +catList.length);
      }
    }
  }  if (count>0&&count<qList.length) {
    moveOn=false;
    if (count2>2&&count==1)
    {
     count2=2; 
    }
    background(50);
    rect(445, 5, 50, 25);
    back();   
    shapes();
    opDisp();
    progress();
    text(qList[count], 30, 50);
    qualities();
    onOpt();

    if (moveOn==true) {
      count++;  
      moveOn=false;
      count2+=2;
      qualities();
      //onO1=false;
      //onO2=false;
      System.out.println("count: "+count +" count2: " +count2 + "cList" +catList.length);
    }
  }
  if (count==qList.length)
  {
    background(50);
    text("Personality Assesment complete.", 30, 50);
    progress();
  }
}