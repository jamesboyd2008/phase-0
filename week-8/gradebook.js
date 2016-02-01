
/*
Gradebook from Names and Scores
I worked on this challenge with Ryan Salerno.
This challenge took us 1 hour 15 minutes.

*/
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

// output: gradebook object with the properties being the students and
// the values being the grades.
// input: (grades and names)
// steps:
//   1. create a gradebook object.
//   2. populate the gradebook with names of students and their scores using
//       existing variables.
//     a. loop students.length times, adding a property to gradebook with
//       the value being that student's grade array.
//   3.


// var gradebook = {};

// gradebook = { Joseph: {
//   testScores: [1, 2, 3];
// },
//              Susan: {},
//              William: {},
//              Elizabeth: {} } ;


// function populateBook() {
//   for(var i = 0; i < students.length; i++) {
//     //console.log(students[i]);
//     gradebook[students[i]] = {};
//     //gradebook[students[i]]['testScores'] = scores[i];
//     gradebook[students[i]].testScores = scores[i];
//   }
//   gradebook.addScore = function(name, score) {
//     gradebook[name].testScores.push(score);
//   }
//   gradebook.getAverage = function(name) {
//     var arr = gradebook[name].testScores;
//     return average(arr);
//   }
// }

// function average(arr){
//   // find the mean
//   // add every up every int in the array, and divide the sum by arr.length
//   var sum = 0; //null? undefined?
//   for (var i = 0; i < arr.length; i++) {
//     var sum = arr[i] + sum;
//   }
//   var avg = sum / arr.length;
//   return avg;
// }

// populateBook();

// gradebook.addScore('Joseph', 10);
// console.log(gradebook.Joseph.testScores);


// __________________________________________
// Refactored Solution

var gradebook = {};

function populateBook() {
  for (var i = 0; i < students.length; i++) {
    gradebook[students[i]] = { 'testScores': scores[i] };
  }
  gradebook.addScore = function(name, score) {
    gradebook[name].testScores.push(score);
  };
  gradebook.getAverage = function(name) {
    return average(gradebook[name].testScores);
  };
}

function average(arr){
  return arr.reduce( (prev, curr) => prev + curr ) / arr.length;
}

//Driver Code

populateBook();


// __________________________________________
/* Reflect

What did you learn about adding functions to objects?
Brackets will evaluate the code inside them, whereas dot notation does not.

How did you iterate over nested arrays in JavaScript?
We just used a for loop. We used the one with an integer index, so we could
access two arrays in the same loop (line 81).

Were there any new methods you were able to incorporate?
If so, what were they and how did they work?
We used .reduce(), which is called on an array.  It reduces the array down to one
element by taking each element in the array, performing some cumulative operation
with it, and returning the single value.  It is like Ruby's inject.  You can use it
for factorials, and many other operations, as well.




*/// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
