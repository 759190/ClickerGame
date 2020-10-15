//for tactile circles
void tactile (int x,int y, int r) { 
       if (dist(x,y,mouseX,mouseY)<r){
    stroke(255);
    } else {
      stroke(0);
    }
    }
    //for rectangles
    void tactileRect(int x,int y, int w, int h) { 
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(250,246,217);
  } else {
    stroke(36,41,17);
  }
    }
    
    //for option screen buttons
     void tactileOptions(int x,int y, int w, int h) { //for rectangles
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(0);
  } else {
    stroke(255);
  }
    }
    //reset
    void reset() {
        mode=INTRO;
  x=width/2;
  y=height/2;
  d=100;
  score=0;
  lives=3;
  
  //speed
  vx=random(-6,6);
  vy=random(-6,6);
    }
  
