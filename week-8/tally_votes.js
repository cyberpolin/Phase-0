// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*

INPUT: each person's votes,
OUTPUT: the vote count for each candidate
Steps:

Go through each voter:
  Based on his pick for president, increase that candidate's votes in the vote count.
  IF the current voter's pick for president is not yet present in the vote count container
    create an entry for that candidate and assign it a vote of 1
  ELSE
    increase that candidate's vote count by 1
  ENDIF


//  Test Number 2


Steps:

Go through each voter:
  Based on his pick for vice president, increase that candidate's votes in the vote count.
  IF the current voter's pick for vice president is not yet present in the vote count container
    create an entry for that candidate and assign it a vote of 1
  ELSE
    increase that candidate's vote count by 1
  ENDIF


// Tests Number 3 and 4

* Same input and output as above tests
For secretary and treasurer, do the same steps above (Test Number 2), except you
replace "vice president" with "secretary" and "treasurer"


// Test Number 5, 6, 7, and 8

Go through each position in the voteCount:
  Start winner variable with the first candidate key and value
  Compare winner variable with current candidate and...
  IF winner variable is smaller
    assign winner variable to current candidate key and value
  END IF
  assign it to the corresponding officer position

*/


// __________________________________________
// Initial Solution

//  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },

// for (var voter in votes) {
//   var candidate = votes[voter]["president"];

//   if(voteCount["president"][candidate])
//     voteCount["president"][candidate] += 1;
//   else
//     voteCount["president"][candidate] = 1;

// }

// for (var voter in votes) {
//   var candidate = votes[voter]["vicePresident"];

//   if(voteCount["vicePresident"][candidate])
//     voteCount["vicePresident"][candidate] += 1;
//   else
//     voteCount["vicePresident"][candidate] = 1;
// }

// for (var voter in votes) {
//   var candidate = votes[voter]["secretary"];

//   if(voteCount["secretary"][candidate])
//     voteCount["secretary"][candidate] += 1;
//   else
//     voteCount["secretary"][candidate] = 1;
// }

// for (var voter in votes) {
//   var candidate = votes[voter]["treasurer"];


//   if(voteCount["treasurer"][candidate])
//     voteCount["treasurer"][candidate] += 1;
//   else
//     voteCount["treasurer"][candidate] = 1;
// }

// // Go through each position in the voteCount:
// //   Start winner variable with the first candidate key and value
// //   Compare winner variable with current candidate and...
// //   IF winner variable is smaller
// //     assign winner variable to current candidate key and value
// //   END IF
// //   assign it to the corresponding officer position

// var candidates = [];
// var candidateCount = [];
// for (var key in voteCount["president"]){
//   candidates.push(key);
//   candidateCount.push(voteCount["president"][key]);
// }

// var counter = 0;
// var winner = ["",0];

// for (var vote in voteCount["president"]) {
//     if (winner[1] < candidateCount[counter]){
//     winner[1] = candidateCount[counter];
//     winner[0] = candidates[counter];
//   }
//   counter++;
// }
// officers.president = winner[0];

// // Tally the votes in voteCount.
// // var voteCount = {
// //   president: { Bob: 1, Louise: 10, ...},
// //   vicePresident: {},
// //   secretary: {},
// //   treasurer: {}
// // }
// for (var position in voteCount) {
//   var winner = ["", 0];

//   for (var candidate in voteCount[position]) {
//     var vote_count = voteCount[position][candidate];
//     if (winner[1] < vote_count) {
//       winner = [candidate, vote_count];
//     }
//   }

//   officers[position] = winner[0];
// }

// console.log(voteCount);
// console.log(officers);

// __________________________________________
// Refactored Solution

//var voteCount = {
// //   president: { Bob: 1, Louise: 10, ...},
// //   vicePresident: {},
// //   secretary: {},
// //   treasurer: {}
// // }

  //votes = {
  //"Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },

// Count the votes for each candidate
for (var position in voteCount){
  for (var voter in votes) {
    var candidate = votes[voter][position];
    var candidateVoteCount = voteCount[position][candidate];

    if(candidateVoteCount) {
      voteCount[position][candidate] += 1;
    }
    else
      voteCount[position][candidate] = 1;

  }
}

// Determines the winner candidate for each position
for (var position in voteCount) {
  var winner = ["", 0];

  for (var candidate in voteCount[position]) {
    var candidateVoteCount = voteCount[position][candidate]; //Just asigning a shorter name
    if (winner[1] < candidateVoteCount) {
      winner = [candidate, candidateVoteCount];
    }
  }

  officers[position] = winner[0];
}

//console.log(voteCount);
//console.log(officers);
// REFLECTION

// What did you learn about iterating over nested objects in JavaScript?
  // Is like iterating any array or object, the key is just to be certain where you are.

// Were you able to find useful methods to help you with this?
  // We didn't look for them really.

// What concepts were solidified in the process of working through this challenge?
  // Javascript values overall.
// __________________________________________
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
