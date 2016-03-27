// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// # Code made by @cyberpolin
// # In  : Integer
// # Out : String separated by commas
// # =============
// # Start a num array
  // split the integer
  // asign it's value to the array
  // IF int is greater than 999
    // start a counter
    // iter the array backwards
    // increase the counter by one
    // IF counter is smaller THAN 3
      // unshift the array item into new array
      // delete given item from original array
    // ELSE
      // unshift a comma to a new array
    // ELSE
      // unshift the array to the new array
    // END IF

// # =============


// Initial Solution
function separateComma(num){

  num_ary = String(num).split("");
  separatedArray = [];


  if (num > 999){

    counter = 0;
    for (i = num_ary.length; i != 0; i--){
      counter++;
      console.log(counter)
      if (counter <=3){
        separatedArray.unshift(num_ary[i-1]);
        delete num_ary[i];
      } else {
        separatedArray.unshift(",");
        counter = 0;
        i = i + 1;
      }
    }

  } else {
    separatedArray.unshift(num_ary);
  }
  console.log(separatedArray.join(""));

  return separatedArray
}

separateComma(98123123)



// Refactored Solution
function separateComma(num){

  num_ary = String(num).split("");
  separatedArray = [];


  if (num > 999){

    counter = 0;
    for (i = num_ary.length; i != 0; i--){
      counter++;
      console.log(counter)
      if (counter <=3){
        separatedArray.unshift(num_ary[i-1]);
        delete num_ary[i];
      } else {
        separatedArray.unshift(",");
        counter = 0;
        i = i + 1;
      }
    }

  } else {
    separatedArray.unshift(num_ary);
  }
  console.log(separatedArray.join(""));

  return separatedArray
}

// Your Own Tests (OPTIONAL)




// Reflection
//  I didn't find a way to refactor it.
// What was it like to approach the problem from the perspective of JavaScript?
  // I felt it the same way, just with different tools
// Did you approach the problem differently?
  // I try to do that but seeing the final result i thing it was the same.
// What did you learn about iterating over arrays in JavaScript?
  // Is not that easy as in Ruby, and there are not that many built in methods, so you have to build wht you want.
// What was different about solving this problem in JavaScript?
  // The syntaxis and some tools javascript doesn't have
// What built-in methods did you find to incorporate in your refactored solution?
  // split and join