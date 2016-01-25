// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jeremy Oltean.

// Pseudocode
// Input: an integer
// Output: a string, with commas in the appropriate place(s)
// Steps: 1. create a variable to store a string version of the number.
//        2. create an empty string variable, result (to fill and return later).
//        3. loop over the string version of the input, back to front, adding
//            characters to the result variable, with commas after every 3rd character.
//        4. Ensure we don't add a comma as the first character in the string.
//        5. Return the result


// Initial Solution

// function separateComma(num) {
//   var num_characters = num.toString().split("");
//   var result = "";

//   var i = num_characters.length - 1
//   var counter = 1

//   while (i >= 0) {
//     result = num_characters[i] + result;
//     i--;
//     if (counter === 3) {
//       result = "," + result;
//       counter = 0;
//     }
//     counter++;
//   }

//   if (result.charAt(0) === ",") {
//     result = result.split("");
//     delete result[0];
//     result = result.join("");
//   }
//   return result;

// }

// Refactored Solution


function separateComma(num) {
  var num_characters = num.toString().split("");
  var result = "";

  var i = num_characters.length - 1
  var counter = 1

  while (i >= 0) {
    result = num_characters[i] + result;
    i--;
    if (counter === 3 && i > -1) {
      result = "," + result;
      counter = 0;
    }
    counter++;
  }

  return result;
}


// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof separateComma(1234) === 'string'),
  "Your function needs to return a string.",
  "1. "
)

assert(
  (separateComma(156974) === "156,974"),
  "Your string is not the same as the integer",
  "2. "
)

assert(
	(separateComma(1569743) === "1,569,743"),
	"Your string is not the same as the integer",
	"3. "
)

assert(
	(separateComma(15697438) === "15,697,438"),
	"Your string is not the same as the integer",
	"4. "
)

console.log(separateComma(1569743897) === "1,569,743,897");
console.log(separateComma(123456789000123));
console.log(separateComma(12345678900012));
console.log(separateComma(1234567890001));

/* Reflection

What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?
We did not approach the problem much differently.  We still pseudocoded input, output,
and steps.  We ran tests.  Our approach was the same.  Ruby seems to have more
default features, though.

What did you learn about iterating over arrays in JavaScript?
It is pretty similar.  The syntax is a little different.  You may have to write some
methods that the Ruby library already provides, but that's ok.

What was different about solving this problem in JavaScript?
The syntax was a little different.  All in all, it was similar.

What built-in methods did you find to incorporate in your refactored solution?
We used .toString() to turn a number type object into a string type object.
*/
