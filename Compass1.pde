import java.util.*;
import java.util.Scanner;
import java.util.Arrays;


//load files in setup?
  String qList[];
  String catList[];
  String aList[];
String aList2[];
int count=0;
int count2=0;
int e,i,s,n,f,t,j,p;
int spot=0;
boolean boxes=false;
PImage back;
boolean moveOn = false;


void setup() {
  assign();
  //back= loadImage("goBack.png");
  System.out.println(Arrays.toString(qList));
  System.out.println(Arrays.toString(catList));
  System.out.println(Arrays.toString(aList));

  size(500, 500);
   background(0,0,0);
   textSize(26);
  text("Phase 1: Personality Analysis", 63, 250);
  
}

void draw() {
  
  mouseOver();
 }

void mouseClicked() { 
  if (count==0)
  { 
   background(0,0,0); 
   rect(445,5,50,25);
  shapes();
  opDisp();
  progress();
   textSize(20);
   text(qList[0], 30, 50);
    //rect might go back here
    back();
    onOpt();
    
     if (moveOn==true){
  count++;
  spot=count;
  moveOn=false;
  count2+=2;
  }
     
     
} else if(count>0&&count<qList.length){
 
   background(0,0,0);
   rect(445,5,50,25);
  back();   
   shapes();
   opDisp();
   progress();
  text(qList[count], 30, 50);
  qualities();
  onOpt();
 
  if (moveOn==true){
  count++;
  spot=count;
  moveOn=false;
  count2+=2;
  }
  
  }if (count==qList.length)
  {
    background(0,0,0);
    text("Personality Assesment complete.", 30, 50);
    progress();
  }
}