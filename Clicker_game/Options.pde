void options() {
  background(255);
 image(option,400,400,800,800);
   imageMode(CENTER);
   
    //text
  textSize(50);
textAlign(CENTER,CENTER); 
fill(255);
textFont(glitch);
text("Options",400,100);

//slider
    stroke(255);
    strokeWeight(7);
    tactileOptions(130,555,30,205);
     line(140,550,140,750);
circle(140,sliderY,20);
 thickness=map(sliderY,550,750,550,500);
   
    //choice 1
   fill(200);
   tactileOptions(150,150,200,300);
   rect(150,150,200,300); 
   //choice 2
   tactileOptions(450,150,200,300);
    rect(450,150,200,300);
    
   image(bill1,250,300,250,250); //left option
  image(bill2,550,300,250,250); //right option
 
 // preview
  stroke(0);
    rect(300,540,200,200); 
    
    //back to intro screen
  tactileOptions(580,650,150,50);
 rect(580,650,150,50);
 
 //text
textAlign(CENTER,CENTER); 
fill(0);
textFont(glitch);
textSize(20);
text("Done",655,685);

//choice
image(selectedImage,400,650,thickness-350,thickness-350); 
  
}
void optionsClicks() { //=====================================================
//options
  if (mouseX > 150 && mouseX < 350 && mouseY > 150 && mouseY < 450) { //option 1
selectedImage=bill1;
}else{
   if (mouseX > 450 && mouseX < 650 && mouseY > 150 && mouseY < 450) { //option 2
 selectedImage=bill2;
 }
 //slider
  if (mouseX>580&&mouseX<730&&mouseY>650&&mouseY<700) {
  mode=INTRO; }
   controlSlider();
 }
}
 void controlSlider() {
    if(mouseX>130&&mouseX<150&&mouseY>550&&mouseY<750) {
    sliderY=mouseY;   
    }
}
void mouseDragged() {
 controlSlider();
}
