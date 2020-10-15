void intro() {
  song.pause();
//theme.play();
  imageMode(CENTER);
  
     //setting image
image(introScreen,400,400,800,800);

//logo
image(logo,400,150,300,200);

  //start button
 tactileRect(225,520,350,120);
 strokeWeight(10);
 fill(149,24,24);
 rect(225,520,350,120); //start button
 
 tactileRect(225,320,350,120);
 rect(225,320,350,120); //options
 
image(sign1,400,380,350,120); 
image(sign2,400,580,500,255); 
  
 //text
 textFont(riffic);
 textSize(60);
textAlign(CENTER,CENTER); 
fill(36,41,17);
text("Start",400,575);
text("Options",400,375);

//music button
tactileRect(700,50,50,50);
rect(700,50,50,50);
image(sign1,725,75,50,50);
image(music,725,75,55,55);

}
void introClicks () { // =========================================
  //start
 if (mouseX>225&&mouseX<575&&mouseY>320&&mouseY<640) {
   mode=GAME; 
 }
 //options
 if (mouseX>225&&mouseX<575&&mouseY>320&&mouseY<440) {
   mode=OPTIONS; 
 }
 if (mouseX>700&&mouseX<750&&mouseY>50&&mouseY<100) {
   musicOn=!musicOn;
 }
 if (musicOn==true) {
   theme.play();
 }else{
   theme.pause();
 }
}
