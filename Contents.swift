//Due Alejandro Salas 12/08/2015


import UIKit

//Associating card names with images
let card1 = UIImage(named: "card1")
let card2 = UIImage(named: "card2")
let card3 = UIImage(named: "card3")
let card4 = UIImage(named: "card4")
let card5 = UIImage(named: "card5")
let card6 = UIImage(named: "card6")
let card7 = UIImage(named: "card7")
let card8 = UIImage(named: "card8")
let card9 = UIImage(named: "card9")
let card10 = UIImage(named: "card10")
let card11 = UIImage(named: "card11")
let card12 = UIImage(named: "card12")
let card13 = UIImage(named: "card13")

//Random generator between 1-13

var randomNumber1 = Int(arc4random_uniform(13))
var randomNumber2 = Int(arc4random_uniform(13))
var randomNumber3 = Int(arc4random_uniform(13))
var randomNumber4 = Int(arc4random_uniform(13))


//Adds Player card values

var player1Values: Int = randomNumber1 + randomNumber2 + 2   //adds 2 for the zero values

var dealerValues: Int = randomNumber3 + randomNumber4 + 2   //Player 2 is Dealer

var winningValue: Int = 21

var player1Card1Value: Int = randomNumber1 + 1

var player1Card2Value: Int = randomNumber2 + 1

var dealerCard1Value: Int = randomNumber3 + 1

var dealerCard2Value: Int = randomNumber4 + 1

//Determine higher card






var validationClass: String {

    //The player values are larger
    if player1Values > dealerValues && player1Values <= winningValue {

        print("Player 1 WINS!")
        print("")
        print("Your cards were: ")
        print("\(player1Card1Value) & \(player1Card2Value) Which totals \(player1Values)")
        print("")
        print("The dealer's cards were: ")
        print("\(dealerCard1Value) and \(dealerCard2Value) Which total \(dealerValues)")

    }
       
        //Dealer values are larger
    else if dealerValues > player1Values && dealerValues <= winningValue {

        print("Sorry you lose! Dealer wins!")
        print("")
        print("Your cards were: ")
        print("\(player1Card1Value) & \(player1Card2Value) Which totals \(player1Values)")
        print("")
        print("The dealer's cards were: ")
        print("\(dealerCard1Value) and \(dealerCard2Value) Which total \(dealerValues)")


    }

        //Values are equal
    else {
        print("The game was a draw! There is no winner try again.")
        print("")
        print("Your cards were: ")
        print("\(player1Card1Value) & \(player1Card2Value) Which totals \(player1Values)")
        print("")
        print("The dealer's cards were: ")
        print("\(dealerCard1Value) and \(dealerCard2Value) Which total \(dealerValues)")
    }

    return ("Thanks for Playing")
}


print(validationClass)

UIImage(named: String(format: "card%i", player1Card1Value))

UIImage(named: String(format: "card%i", player1Card2Value))

UIImage(named: String(format: "card%i", dealerCard1Value))

UIImage(named: String(format: "card%i", dealerCard2Value))















