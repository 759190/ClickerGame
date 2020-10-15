void game() {
 background(255);
   strokeWeight(3);
   
   //setting image
image(setting,400,400,1000,800);

//pause button
fill(250,246,217);
//circle(220,60,70);
stroke(36,41,17);
strokeWeight(6);
line(210,45,210,75);
line(230,45,230,75);

//score and lives counter
  fill(250,246,217);
  textFont(glitch);
textSize(20);
text("Score: " +score, width/2,50);
text("Lives: "+lives,width/2,100);

   //target 
image(selectedImage,x,y,thickness-350,thickness-350); //option1  

  //movement
  x=x+vx; 
  y=y+vy;
 
  //bouncing
  if (x>=height-(thickness-350)/2 || x<=(thickness-350)/2) {    
    vx=vx*-1;
 }
  if (y>=height-(thickness-350)/2 || y<=(thickness-350)/2) {
    vy=vy*-1;
 }
 image(play,220,60,70,70);
 image(pause,220,60,70,70);
}

void gameClicks() { // ================================================
  if(dist(mouseX,mouseY,x,y)<(thickness-350)/2) {
    score=score+1;
    vx=vx*1.1;
    vy=vy*1.1;
    yell.rewind();
    yell.play();
    
  }else if(dist(mouseX,mouseY,220,60)<35) {
    mode=PAUSE;
    image(play,220,60,70,70);

  }else{
    lives=lives-1;
    laugh.rewind();
   laugh.play();
    if (lives==0)  mode=GAMEOVER;
    song.rewind(); 
  }  
}
