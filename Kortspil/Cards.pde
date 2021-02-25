ArrayList<Card> cardList = new ArrayList<Card>();
boolean cardsMade = false;
boolean randomCardsPicked = false;
boolean cardsDistributed = false;
int numberOfPickedCards;

class Card{
  int symbol; //clubs, diamonds, hearts, spades
  int number; // 1-13
  boolean cardPicked = false;
  boolean cardCounted = false;
  
  boolean cardOwnedByPlayer = false;
  int playerOwningCard;
  
  Card(int _symbol, int _number){
    symbol = _symbol;
    number = _number;
  }
}


void makeAllCards(){
  if(cardsMade == false){
    println("Making cards and picking random cards----");
    for(int i = 0; i<4; i++){
      for(int f = 0; f < 13; f++){
        cardList.add(new Card(i, f));
        println("Symbol: " + (i+1) + " Number: " + (f+1));
      }
    } 
    cardsMade = true;
  }
  
}

void distributeCards(){    //Distributes picked cards between players
  if(cardsDistributed == false && randomCardsPicked == true){
    
    int x = 1;
    for(Card c: cardList){
      
      if(c.cardPicked){ //<>//
        if(x == 1  || x == 5 || x == 9||x == 13|| x == 17|| x== 21|| x == 25){
          c.cardOwnedByPlayer = true;
          c.playerOwningCard = x;
          playerOneCardAmount++;
        }
        if(x == 2 || x == 6 || x == 10|| x == 14 || x == 18 || x == 22 || x == 26){
          c.cardOwnedByPlayer = true;
          c.playerOwningCard = x;
          playerTwoCardAmount++;
        }
        if(x == 3 || x == 7 || x == 11|| x == 15|| x == 19|| x == 23|| x == 27){
          c.cardOwnedByPlayer = true;
          c.playerOwningCard = x;
          playerThreeCardAmount++;
        }
        if(x == 4|| x == 8 || x == 12 || x ==  16 || x == 20 || x == 24 || x == 28){
          c.cardOwnedByPlayer = true;
          c.playerOwningCard = x;
          playerFourCardAmount++;
        }
        x++;
      }
    } 
  }
  
  int nmb = 0;
  for(Card c: cardList){
    if(c.cardOwnedByPlayer == true){
      nmb = nmb + 1;
    }
  }
  if(nmb == 28){
    cardsDistributed = true;
  } //<>//
}

void chooseRandomCards(){  //Either picks or doesn't pick a card until it has picked 28 cards
  if(randomCardsPicked == false){
    int x;
    for(Card c: cardList){
      numberOfPickedCards();
      if(numberOfPickedCards < 28){
        x = int(random(1,10));
        if(x == 5){
          if(c.cardPicked == false){
            c.cardPicked = true;
            println("Card symbol: " + (c.symbol+1) + " and number: " + (c.number+1) + " is picked"); 
          }
        }
      } 
    }
    if(numberOfPickedCards == 28){
      randomCardsPicked = true;
    }
  }
}

void numberOfPickedCards(){ //Checks the number of picked cards
  for(Card c: cardList){
    if(c.cardPicked == true && c.cardCounted == false){
      numberOfPickedCards++;
      c.cardCounted = true;
    }
  }
}
