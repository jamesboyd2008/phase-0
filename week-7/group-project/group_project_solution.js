/*
As a user, I want to use a function, "sum", that takes a list of numbers,
sums them all together, and gives me the combined total.

I want a different function, "mean", that takes a list of numbers,
and gives me the arithmetic mean of those numbers.  That is, the function
adds them all up, and divides that sum by the number of values given in
the original list.

I want a third function, "median", that takes a list of numbers,
and gives me the arithmetic median of those numbers.  If the list of numbers
contains an even number of values (having no middle value), it gives me
the average of the two middle numbers.
*/

/*
Project 1
-Input: array of numbers
-Output: the sum of the numbers in array
-Steps:
  Define a function that accepts an array as arg
  Create a variable = zero
  Iterate over the array, += each value in the array to the variable
  Return the variable
*/
// ----------JAVASCRIPT - PROJECT 1 ------------------------


// function sumArrayElements(inputArray) {
//   var arraySumNumber = 0
//   for (var i=0; i < inputArray.length; i++){
//     arraySumNumber += inputArray[i];
//   };
//   return arraySumNumber;
// };



function sumArrayElements(inputArray) {
  var arraySumNumber = 0
  for (var i in inputArray){
    if (inputArray[i]) {
      arraySumNumber += inputArray[i];
    }
  };
  return arraySumNumber;
};
// As a user, I want to take a list of numbers and run them through a specific
// function. There is an additional number that is set to zero, and we will call
// that ‘x’. For each element in the list of numbers, we will add them together
// into ‘x’. Once that is complete, still in that function, we will store ‘x’s value.



/*
Project 2
-Input: array of numbers
-Output: mean of the numbers in array
-Steps:
  Define a function that accepts an array as arg
  Create a variable = zero
  Iterate over the array, += each value in the array to the variable
  Divide the variable by the length of the array and return the answer
*/
// ----------JAVASCRIPT - PROJECT 2 ----------------------

// function meanOfElements(inputArray) {
//   var arraySumNumber = 0
//   for (var i=0; i < inputArray.length; i++) {
//     arraySumNumber += inputArray[i];
//   };
//   return arraySumNumber / inputArray.length;
// };


function meanOfElements(inputArray) {
  var arraySumNumber = 0
  for (i in inputArray) {
    arraySumNumber += inputArray[i];
  }
  return (arraySumNumber / inputArray.length);
}

// User.4 comment - code is broken, returns a NaN
// As a user, I want to make a function that takes a set list of numbers.
// I want to add them all together and store that as a variable within that
// specific function. I also want to take that variable within that function and
// get the mean number.


/*Project 3
-Input: array of numbers
-Output: median(middle value in sorted list) of the list of numbers
  Define a function that accepts an array as arg
  IF array.length is even
    sort the array
    find the values at the middle 2 indexes
    return whatever number is inbetween those two values
  ELSE (the array.length is odd)
    sort the array
    return the value at the middle index
*/
// ----------JAVASCRIPT - PROJECT 3 ----------------------

function medianOfElements(inputArray) {
  if (inputArray.length % 2 == 0) {
    var highMiddle = inputArray[(inputArray.length / 2)];
    var lowMiddle = inputArray[(inputArray.length / 2) - 1];
    return (highMiddle + lowMiddle) / 2;
  }
  else {
    return inputArray[Math.floor(inputArray.length / 2)];
}
};


//user.4 added bracket to make code actually functional. no refactor needed.
// I would some type of sort to the array, because an array is not always pefrectly
// ordered. But I am not allowed to change the functioning code as per 7.8 instructions.

// As a user, I want to take a group of numbers and put them through a set function.
// This function will take the middle number in that group and return the median number.
// If the list has an even amount, we will add the high middle and low middle
// (as per Algebra mathematical law), then store that median within the function.
// Otherwise, just store the middle number as the median number.
