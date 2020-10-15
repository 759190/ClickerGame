//Sarah Nelson
//block 1-1a
//Oct 6, 2020

//pause button
//volume issue


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound effects
Minim minim;
AudioPlayer theme,song,yell,bump,laugh;


//images
PImage setting; //game background
PImage logo; //intro logo
PImage bill2,bill1,selectedImage; //options
PImage introScreen; //intro background
PImage option; //options background
PImage sign1,sign2; //wooden buttons
PImage play,pause,onOff;
PImage music;


boolean musicOn;

float thickness;
float x,y,d; //target info 
float sliderY;
int score, lives;
int highScore;
float vx,vy; //velocity

PFont glitch; //font
PFont riffic;

int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;

void setup() { //============================================================
  imageMode(CENTER);
 size(800,800);
thickness=500;
 
 musicOn=false;
 
 glitch=createFont("Glitch.otf",50);
  riffic=createFont("Riffic.ttf",50);
 
  mode=INTRO;
  x=width/2;
  y=height/2;
  score=0;
  lives=3;
  highScore=0;
  
  //speed
  vx=random(-6,6);
  vy=random(-6,6);
   
   sliderY=650;
  //minim
minim= new Minim(this);
theme=minim.loadFile("theme.wav"); //theme song
yell=minim.loadFile("Yell.mp3"); //yell when target hit
laugh=minim.loadFile("Laugh.mp3"); //laugh when target missed
song=minim.loadFile("Song.mp3"); //gameover song


 //images 
setting=loadImage("intro.png"); //background image
option=loadImage("Options.jpeg"); //options background
logo=loadImage("Gravity_Falls_logo.png"); // logo
bill1=loadImage("bill3.png"); //bill 1
bill2=loadImage("bill1.png"); //bill 2
introScreen=loadImage("background2.jpg"); //intro screen
sign1=loadImage("sign.jpeg");// wooden sign
sign2=loadImage("wood.png");// wooden sign flipped
play=loadImage("playbutton.png");// play button
pause=loadImage("pause.png");// pause button
music=loadImage("Music.png");// pause button

 selectedImage=bill1;
}


void draw()  { // ===============================================================
  
  if (mode==INTRO) {
    intro();
  }else if (mode==GAME) {  
   game(); 
  }else if (mode==PAUSE) {
    pause();
  }else if (mode==GAMEOVER) {
    gameover();
    }else if (mode==OPTIONS) {
    options();
  }else{
    println("Error: Mode= " + mode);
  }
}
