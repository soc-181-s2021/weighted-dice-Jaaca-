#Now i will create three decks,deck_bridge,deck_war and hearts_dec
cardscsv <- "https://gist.githubusercontent.com/garrettgman/9629323/raw/ee5dfc039fd581cb467cc69c226ea2524913c3d8/deck.csv"
cardscsv 
deck <- read.csv(cardscsv) 
#View(deck)
cardscsv


#By changing the sampling size, I can change the number of cards in my deck.
deal <- function(cards, hand = 1 ){ 
  random <- sample(1:52, size = 52) 
  cards <- cards[random, ]
  cards[hand,]
  }
deal(cards = deck)

#create different decks of hearts
deck_hearts <-deck
deck_hearts $value[deck_hearts $suit=="clubs"] <-0
deck_hearts $suit=="clubs"
deck_hearts  $suit
deck_hearts $value

deck_hearts  $value[deck_hearts  $suit=="spades"] <-0
deck_hearts  $value[deck_hearts  $suit=="diamonds"] <-0
deck_hearts $value [deck_hearts  $suit== "hearts"] <-1

deck_hearts  $value[deck_hearts  $suit=="spades" & deck_hearts $face=="queen"] <-13
