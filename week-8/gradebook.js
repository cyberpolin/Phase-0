var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], //Joseph's scores
               [85, 80, 90, 90], // Susan's scores
               [75, 70, 80, 75], // William's scores
               [100, 90, 95, 85] ] // Elizabeth's scores


// __________________________________________
// Write your code below.

var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]

  },
  Elizabeth : {
    testScores: scores[3]
  }

};


console.log(gradebook.Susan.testScores);


//add score function
gradebook.addScore = function(name, scorearguments){

  gradebook[name].testScores.push(scorearguments);

  console.log("after pushing grades " + gradebook[name].testScores);

  // console.log(gradebook[name].testScores)

}

//getAverage function
gradebook.getAverage = function (name){

  var scores = gradebook[name].testScores;
  // console.log(testScores);
  // this.average(scores);

  var avg = average(scores);

  return avg;

}

var average = function (testScores){

  console.log("running average")

  var add = 0;
  var answer = 0;

  for (var x in testScores){
    add += testScores[x];
  }
  answer = (add / testScores.length);

  console.log("average " +answer);
  return answer;
}


// gradebook.getAverage("Susan")
// gradebook.addScore("Susan", 80) // would push the score 80 into the value of gradebook.Susan.testScores.

// Refactor
// What did you learn about adding functions to objects?
  // They work like methods on Ruby classes
// How did you iterate over nested arrays in JavaScript?
  // We didn't need to
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  //

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
)''