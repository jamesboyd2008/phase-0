// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var cat = "Skittles";
cat += " ate a mouse";
console.log(cat); // Skittles ate a mouse

// prompt("Input your favorite food.");
// console.log("Hey! That's my favorite food, too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var layer = "#";
for (var i = 0; i < 7; i++) {
  console.log(layer);
  layer = layer + "#";
};

// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  return Math.min(num1, num2)
}

console.log(min(0, 10) === 0);
console.log(min(0, -10) === -10);

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "James",
  age: 26,
  favoriteFoods: ["Chinese food", "strawberries", "chicken"],
  quirk: "new lightbulb in my room is 1500 lumens"
};
