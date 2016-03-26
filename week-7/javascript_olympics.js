// JavaScript Olympics

// I paired [with Talal/Carlos] on this challenge.

// This challenge took me [1] hours.



// Bulk Up

var athlete1 = {
  name: "Sarah Hughes",
  event: "Ladies Singles",
};
var athlete2 = {
  name: "Michel Phelps",
  event: "100 free",
};

var athleteArray = [athlete1, athlete2];
var athlete = 0;

function win(array){
  for (athlete in array){
    athleteArray[athlete].win = athleteArray[athlete].name + " wins the " +     athleteArray[athlete].event;
    console.log(athleteArray[athlete].win);
  };
};

win(athleteArray);

// Jumble your words

//Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Enlaces a un sitio externo.) and Array (Enlaces a un sitio externo.) docs. HINT: Think about how you would write this in Ruby and translate!

function jumble(string){

  //   string = string.split("");
  //   var reversedString = string.reverse();
  //   reversedString = reversedString.join('');
  //   console.log(reversedString);


  //Refeactored
  string = string.split("").reverse().join("");
  console.log(string);
}

jumble("hello")
// 2,4,6,8

//Create a function that accepts an array of numbers. Return an array with only the even numbers. You can do this manually or use built-in JavaScript Array Methods (Links to an external site.). Are you missing Ruby yet?

// function evenNumbers(array){
//   var evenArray=[];
//   var x = 0;
//   for (x in array){
//     if (array[x]%2 == 0){
//       evenArray.push(array[x]);
//     };
//   };
//   return evenArray
// };

// var sampleArray = [1, 2, 3, 4, 5, 6];
// console.log(evenNumbers(sampleArray));


// function isBigEnough(value) {
//   return value >= 10;
// }
// var filtered = [12, 5, 8, 130, 44].filter(isBigEnough);
// // filtered is [12, 130, 44]

function evenNumbers(value){
  if (value % 2 == 0){
    return value
  }
};

var sampleArray = [1, 2, 3, 4, 5, 6].filter(evenNumbers);
console.log(sampleArray);

// "We built this city"
// function myObject(){
//     this.iAm = 'an object';
//     this.whatAmI = function(){
//         alert('I am ' + this.iAm);
//     };
// };

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
  // JSON Java Script Objects, they are a little weird but interesting.
// What are constructor functions?
  // Is like instaciating a Object
// How are constructors different from Ruby classes (in your research)?
  // First of all the syntax is different, and every variable is private there, so if you want to access a variable outside you will have to make it a global one.