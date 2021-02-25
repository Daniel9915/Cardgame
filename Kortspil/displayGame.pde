void displayGame(){
  makePlayer(548,350, "Player one",1, false);  //Make four player icons, name and info
  makePlayer(548,100, "Player two",2, false);
  makePlayer(111,220, "Player three",3, true);
  makePlayer(785,220, "Player four",4, false);
}

void makePlayer(int x, int y, String name, int playerNumber, boolean scoreToTheRight){ 
  push();
    translate(x,y);
    
    stroke(0);  //Makes the player icon
    fill(255);
    rect(0,0,40,60);
    ellipse(0,-10,20,20);
    arc(0,30, 35, 50, radians(180), radians(360),CHORD);
    
    text(name,0,-50);      //Info text about the player
    textAlign(LEFT, CENTER);
    if(scoreToTheRight){
      text("Score: ", 30,-20);
      text("Number of cards: " +cardAmount(playerNumber), 30, 0);
    }
    if(scoreToTheRight == false){
      text("Score: ", -150,-20);
      text("Number of cards: " + cardAmount(playerNumber) ,-150, 0);
    }
  pop();
}

int cardAmount(int number){  //The input for the function is what player's number of cards needs to be returned
  if(number == 1){
    return playerOneCardAmount;
  }
  if(number == 2){
    return playerTwoCardAmount;
  }
  if(number == 3){
    return playerThreeCardAmount;
  }
  if(number == 4){
    return playerFourCardAmount;
  }
  return 0;
}
