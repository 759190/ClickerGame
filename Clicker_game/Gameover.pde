void gameover() {
 
  background(149,24,24);
  
  //gameover screen
  textSize(60);
textAlign(CENTER,CENTER); 
fill(255);
textFont(glitch);
textSize(0);
text("GAME OVER",400,320);

//gamover music
laugh.pause();
theme.pause();
song.play();

//high score
  fill(255);
  textFont(glitch);
textSize(35);
text("High Score:  " +highScore, width/2,600);

if (score>highScore) {
 highScore= score;
}
}

void gameoverClicks() { // =======================================
  reset();
  mode=INTRO;
  theme.rewind();
}
