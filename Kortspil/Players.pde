int playerOneCardAmount;
int playerTwoCardAmount;
int playerThreeCardAmount;
int playerFourCardAmount;

boolean playersCreated = false;

Player[] player = new Player[4];
class Player{
 boolean playerTurn = false;
 boolean playerAsked = false;
 boolean recived7Cards = false;
 
 int playerNumber;
 

 Player(int _playerNumber){
   playerNumber = _playerNumber;
 }
  
}

void createPlayers(){  //Creates four players
  if(playersCreated == false){ 
    println("Generates players------------------------ ");
    for(int i = 0;i<=3; i++){
      player [i] = new Player(i);
      println("Player: " + (player[i].playerNumber + 1));
      if(i == 3){
        playersCreated = true;
      }
    }
  }
}
  
