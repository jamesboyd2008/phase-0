/* Design Basic Game Solo Challenge

This is a solo challenge

Your mission description: In this game, there is a carton of one dozen eggs.  One
egg is uncooked, and the rest are egg.  Two players take turns.  On a
turn, a player takes an egg from the carton and tries to crack it on top of their
head.  If it is egg, it won't crack.  If it is raw, it will crack, and that
player loses.  The other one wins.  This is a game of chance. Player 1 goes first.
Overall mission: don't smash an egg on your head.
Goals: allow the other player to smash the raw egg on their head!
Characters: 2 players. Player 1 and Player 2.
Objects: eggCarton, player1, player2
Functions: selectEgg, smashEgg, displayCarton, play

*/

// Pseudocode
// Function play calls the other functions.
// Upon creating a new game, an array of twelve eggs has one random raw egg, the
// rest are egg. 2 players are created. The eggCarton is displayed. Player 1
// chooses and egg via selectEgg function.  The eggCarton is displayed (one egg is missing).
// Player 1 then smashes the egg on their head.  If it is raw, the game is over
// and player 2 wins.  If it is cooked, it is now player 2's turn to choose from
// the carton.  This pattern continues until someone smashes an egg on their head.

// Initial Code

// var game = {
//   player1: {
//     head: "clean"
//   },
//   player2: {
//     head: "clean"
//   },
//   // random egg in carton is raw. Rest are egg. Players can't see the raw egg.
//   generateCarton: function() {
//     var rawEgg = Math.floor(Math.random() * 13);
//     var carton = ["egg", "egg", "egg", "egg",
//                   "egg", "egg", "egg", "egg",
//                   "egg", "egg", "egg", "egg"];
//     var specialCarton = [carton, rawEgg]
//     return specialCarton;
//   },
//   displayCarton: function(carton) {
//     console.log(carton[0]);
//   },
//   selectEgg: function(carton) {
//     var choice = Math.floor(Math.random() * carton[0].length);
//     console.log("You chose egg " + (choice + 1).toString());
//     return choice;
//   },
//   play: function() {
//     //calls other functions
//     var eggCarton = game.generateCarton();
//     console.log("Let's play Egg Smash");
//     game.displayCarton(eggCarton);
//     var choice = null;
//
//     while(game.player1.head === "clean" && game.player2.head === "clean") {
//       console.log("Player 1, choose an egg.");
//       choice = game.selectEgg(eggCarton);
//       eggCarton[0].splice(choice, 1);
//       game.displayCarton(eggCarton);
//       if (choice === eggCarton[1]) {
//         game.player1.head = "soiled";
//       }
//       console.log("Player 2, choose an egg.");
//       choice = game.selectEgg(eggCarton);
//       eggCarton[0].splice(choice, 1);
//       game.displayCarton(eggCarton);
//       if (choice === eggCarton[1]) {
//         game.player2.head = "soiled";
//       }
//     }
//
//     if (game.player1.head != "clean") {
//       console.log("Player 2 wins!");
//     } else {
//       console.log("Player 1 wins!");
//     }
//   }
// }
//
// // Driver Code
// game.play();

// Refactored Code

var game = {

  player1: { head: "clean" },
  player2: { head: "clean" },

  generateCarton: function() {
    var rawEgg = Math.floor(Math.random() * 13);
    var carton = ["egg", "egg", "egg", "egg",
                  "egg", "egg", "egg", "egg",
                  "egg", "egg", "egg", "egg"];
    carton[rawEgg] = "raw";
    return carton;
  },

  displayCarton: function(carton) {
    console.log(carton);
  },

  selectEgg: function(carton, player) {
    game.displayCarton(carton);
    var choice = Math.floor(Math.random() * carton.length);
    console.log("You chose egg " + (choice + 1).toString());
    if (carton[choice] === "raw") {
      game[player].head = "soiled";
    }
    carton.splice(choice, 1);
    return carton
  },

  play: function() {
    var eggCarton = game.generateCarton();
    console.log("Let's play Egg Smash!");

    while (game.player1.head === "clean" && game.player2.head === "clean") {
      console.log("Player 1, choose an egg.");
      eggCarton = game.selectEgg(eggCarton, "player1");

      console.log("Player 2, choose an egg.");
      eggCarton = game.selectEgg(eggCarton, "player2");
    }

    if (game.player1.head != "clean") {
      console.log("Player 2 wins!");
    } else {
      console.log("Player 1 wins!");
    }
  }
}

// Driver Code

game.play();




/* Reflection

What was the most difficult part of this challenge?
Figuring out how to get user input on the command line.  I gave up and make a function
that generates a random answer.  Translating Ruby knowledge into JavaScript knowledge
brings up some obstacles.

What did you learn about creating objects and functions that interact with one another?
Scope is weird.  You have to know the scope.  I'm still learning the synatx.

Did you learn about any new built-in methods you could use in your refactored
solution? If so, what were they and how do they work?
I used Math.random().  Not much else new.  I had/have logic issues.

How can you access and manipulate properties of objects?
objectName.property.....or....objectName["property"]
*/
