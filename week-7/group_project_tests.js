// Pseudocode:



// - create a function called sum
// - add all the numbers in the passed array together, and return that sum

function sum(int_array){
  total = 0;
  for (i in int_array){
    total += int_array[i];
  }
  return total
}
// - create a function called mean
// - add all the numbers of the passed array together
// - divide the sum by the amount of numbers in the array to get the average
// - return the average

function mean(int_array){
  total = sum(int_array);
  return average = total/(int_array.length)
}
// - create a function called median
// - sort the numbers in the passed array from low to high
// - calculate the length of the array
// IF
//      the length of the array equals is odd
//    - divide the length by 2 and create a variable that is equal to the result of the division rounded down to a whole number.
//    - return the number in the array that is at the index of the variable's value.
// ELSE
//    - the length of the array is even.
//    - divide the length of the array by 2 and return the number in the array at the index equal to the result of the division

function median(int_array){
  sorted_array = int_array.sort();
  array_length = int_array.length;
  if (array_length%2 == 1){
    var median = Math.floor(array_length/2);
    return int_array[median];
  } else {
    return int_array[array_length/2];

  }
}


// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)