// // Eloquent JavaScript

// Did you learn anything new about JavaScript or programming in general?
// Some history of Javascript, and the idea of programing languages are like translators for binary code.

// Are there any concepts you feel uncomfortable with?
// Not at all

// Ch. 1: Values, Types, and Operators (Enlaces a un sitio externo.)
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
  // Well the arithmetical operators are the same when you are talking about numbers, but completly different when you talk about text and numbers, in fact it makes some weird stuff.
  // I found short circuit operator super intersting, also the logical comparison === may be useful.

// Ch. 2: Program Structure (Enlaces a un sitio externo.)
// What is an expression?
  // Is something that produce a value, in that way almost everything is an expression in Javascript

// What is the purpose of semicolons in JavaScript? Are they always required?
  //They are a way to end and expresion and no, they aren't necesary all the time.

// What causes a variable to return undefined?
  // Declaring a variable without no value at all
// Write your own variable and do something to it in the eloquent.js file.
var greet = "Hello to everyone";
console.log(greet);

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  // That's a puts, as you allready figure it out it print a string in to console.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Enlaces a un sitio externo.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

// var favorite_food = promt("what's your favorite food?")
// alert("Hey! That's my favorite too! i love" + favorite_food)

// Describe while and for loops
  // While is a loop that runs until it evaluates true, an for runs until the counter run into a given value.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
  // you have to pur var before a variable, and the use of semicolomns.

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// FIZZBUZZ

// Chess //
// # Code made by @cyberpolin
// # In  : width/height of the board (int)
// # Out : Print the chess board
// # =============
// # Start a function named create_board and accept a int
  // start a counter
  // start print variable
  // iter the number of timer entered in the atribute
    // iter the number of timer entered in the atribute
      // IF counter%2 EQUAL to zero
        // add to print_variable " "
      // ELSE
        // add to print_variable "#"

      // IF counter equal to function argument
        // add to print_variable a break line

    // when done itering print print_variable
// # =============

function create_board(size){
  print_variable = ""
  for (i = 0; i != size; i++){
    divisor =  (i%2)
    for (x = 0; x != size; x++){
      console.log("remainder: "+x%2+ " divisor: "+divisor)
      if (x%2 == divisor){
        print_variable += "#"
      } else {
        print_variable += " "
      }
    }
  print_variable += "\n"
  }

  console.log(print_variable)
}
create_board(9)
// Ch. 3: Functions
// What are the differences between local and global variables in JavaScript?
  // local variables are in the scope of the function that create them, every thing created outside a function in the main file is a global variable.
// When should you use functions?
  // Every time you want to make a clearer code, and for encapsulating code
// What is a function declaration?
  // is a way to start a function
// Complete the minimum exercise in the eloquent.js file.
function minimum(int1, int2){
  if (int1 > int2){
    return int2
  }
  return int1
}

console.log(minimum(0,-10))

// Ch. 4: Data Structures: Objects and Arrays
// Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
  // Just the syntax, they are exactly the same
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
  var me = {
    "name"  : "Carlos Gonzalez",
    "age"   : 35,
    "favorite_food" : ["Ostiones", "Lentejas", "Quesadillas"],
    "quirk" : "I can open a beer with almost everything"
  }
// What is a JavaScript object with a name and value property similar to in Ruby?
  // Hashes, in fact Ruby added the javascript syntaxt to write hashes like objects in Javascript (JSON)

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var sum =0
sum += 2
console.log(sum) // 2
