boolean inGame = true;

void setup(){
  size(896,414);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
}

void draw(){
  clear();
  background(213, 49, 39);
  if(inGame==false){
    startBtn(width/2,height/3*2,309,88);
    title(width/2,height/3);
  }
  if(inGame){
    game();
  }

}

void title(int x,int y){
  push();
    strokeWeight(3);
    translate(x,y);
    textSize(72);
    fill(75,154,47);
    for(int i = -3; i<3; i++){
      for(int o =-3; o<3; o++){
        text("Fisk", i,o);
      }
    }
    fill(255);
    text("Fisk", 0,0);
  pop();
}

void startBtn(int x, int y, int w, int h){
  push();
    strokeWeight(0);
    translate(x,y);
    
    fill(75,154,47);
    rect(0,0,w,h,20);
    
    fill(255);
    rect(0,0,w-15,h-15,20);
    
    fill(0);
    textSize(36);
    text("Start Spil", 0,-5); 
  pop();
  clickedBtn(x,y,w,h);
}

void clickedBtn(int x, int y, int w, int h){
  if(mousePressed){
    if(mouseX>x - w/2 && mouseX<x+w/2){
      if(mouseY>y-h/2 && mouseY<y+h/2){
        inGame = true;
      }
    }
  }
}
