void pause() {
 theme.pause();
   //text
  textSize(50);
textAlign(CENTER,CENTER); 
fill(250,246,217);
text("Pause",400,400);
}
void pauseClicks() {
  if(dist(mouseX,mouseY,220,60)<35) {
    mode=GAME;
    if (musicOn==true)
     theme.play();
  }
}
