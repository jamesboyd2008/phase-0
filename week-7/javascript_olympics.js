// JavaScript Olympics

// I paired with Andrew Kim on this challenge.

// This challenge took me 2 hours.


// Warm Up

// var athlete_name = {
//   name: "derp face",
//   event: "pole vault",
//   win: function win(name, event) {
//     console.log(name + " won the " + event);
//   }
// };


// athlete_name.win(athlete_name.name, athlete_name.event);

// Bulk Up
// Input: an array full of athlete objects, those objects have various
//         properties.
// Output: the same array, having undergone some modifications.
// Steps: 1. Add a win property to each element in the array.
//          a. "win" is the property name.
//          b. the value is a string of the object's name property, plus
//              the string " won the ", plus the object's event property.

//----------initial versions-----------
// var function win(athletes) {
//   for (var i = 0; i < athletes.length; i++) {
//     athletes[i].win = function win(name, event) {
//     console.log(name + " won the " + event);
//     }
//   }
// }
// function makeWin(array) {
//   for (var i in array){
//     array[i].win = function win() {
//       console.log(array[i].name + " has won " + array[i].event);
//     }
//   };
// }

//--------------refactored version--------------
var makeWin = function(array) {
  for (var i in array){
    array[i].win = array[i].name + " has won " + array[i].event;
  };
}


var andrew= {name:"Andrew",
            event:"Basketball"};
var james= {name:"James",
           event:"Football"};
var sarah= {name:"Sarah",
           event: "Track"};
var people = [andrew, james, sarah];

makeWin(people);
for (var i in people) {
  console.log(people[i].win);
}


// Jumble your words
// Input: A string that you want to reverse
// Output: A reversed string
// Steps:1. Split string into an array of elements
// 2. Reverse the array of elements
// 3. Return a re-joined string of jumbled words.

var jumble = "Hello my name is andrew";

var reverseString = function(unjumbled) {
  return unjumbled.split("").reverse().join("");
};

console.log(reverseString(jumble));

// 2,4,6,8

// Input: an array of integers.
// Output: an array of even integers.
// Steps:
// 1. Create a result variable that is an empty array.
// 2. Iterate of the given array of integers, adding the even numbers to
//    result.
//    a. IF a number divides evenly by 2.
//       i. add it to the result array.
// 3. return the result array.


function evens(numbers) {
  var result = [];

  for (var i in numbers) {
    if (numbers[i] % 2 === 0) {
      result.push(numbers[i]);
    };
  };

  return result;
};

var numbers = [1, 2, 3, 4, 5 ,6, 7, 8, 9, 0];
console.log(evens(numbers));

// "We built this city"

var Athlete = function(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

//driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// We used the keyword "this", which helped our understanding of it.  We solidified our
// understanding that JavaScript lacks much of the functionality of Ruby.  If you
// want to compare two arrays in JavaScript, you must write your own comparison
// function.  We improved our understanding of objects and properties.
//
// What are constructor functions?
// Constructor functions are similar to classes in Ruby, I think.  They are the framework
// for more objects with the same properties and methods, or states and behaviors.
//
// How are constructors different from Ruby classes (in your research)?
// Oops.  Now, this question is telling me they are different.  Ruby classes come with 
// a lot more default stuff, like methods.  JavaScript constructors are functions, themselves.
// They don't come with as much default stuff.
