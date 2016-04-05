// User stories
// As a <type of user>, I want <some goal> so that <some reason>.

// As a house wife, I want to create a list so that i can go shopping.
// As a house wife, I want to add an item to that list so i can remember what i'm buying.
// As a house wife, I want to remove an item from the list so it wouldn't mess my mind.
// As a house wife, I wnat to update quantities if i forgot something.
// As a house wife, I want to print the list in my screen, so i can see it.

// Code made by @cyberpolin
// In  : a list of items
// Out :  a screen printed version of a list
// =============
// // start  object to content item in the list as a key and quantity as a value
// # create a new list
  // ask the user the item and quantity he/she wnat to add
  // IF user just give item
    // add the item with a 1 as a value
  // ElSE
    // add the value the user give
  // add item and value to the list object

  // ADD AN ITEM
  // add the item as a key and the value argument as a value

  // REMOVE ITEM
  // remosve the item with item value

  // UPDATE QUANTITY
  // update value of the key given by the user.

  // PRINT THE LIST
  // print the list to screen
// =============

// function List (name) {
//   this.name =  name;
//   this.list_items = {}
//   console.log("You have succsesfully created a list named:" + this.name);
//   this.add = function (item, value){
//     if (value == undefined){// TO IMPROVE
//       value = 1;
//     }
//     this.list_items[item] = value;
//     //console.log(list_items)
//   }
//   this.remove = function (item){
//     delete this.list_items[item];
//     //console.log(list_items);
//   }
//   this.update = function(item, value){
//     this.list_items[item] = value;
//   }
//   this.print = function(){
//     console.log( "My "+ this.name + " list.")
//     for (item in this.list_items){
//       console.log(item + " : " + this.list_items[item]);
//     }
//   }
// }


// var myList = new List("Super Market");
// myList.add("Eggs");
// myList.add("Tomatoes", 3);
// myList.add("Chiken", 4);
// myList.add("Carrots", 10);
// myList.remove("Eggs");
// myList.update("Tomatoes", 5);
// myList.print();



// REFACTOR
function List (name) {
  this.name =  name;
  this.list_items = {}
  console.log("You have succsesfully created a list named:" + this.name);
  this.add = function (item, value){
    if (value == undefined){// Tried to improve it, but it looks like it's not supported yet
      value = 1;
    }
    this.list_items[item] = value;
  }
  this.remove = function (item){
    delete this.list_items[item];
  }
  this.update = function(item, value){
    this.list_items[item] = value;
  }
  this.print = function(){
    console.log( "My "+ this.name + " list.")
    for (item in this.list_items){
      console.log(item + " : " + this.list_items[item]);
    }
  }
}

var myList = new List("Super Market");
myList.add("Eggs");
myList.add("Tomatoes", 3);
myList.add("Chiken", 4);
myList.add("Carrots", 10);
myList.remove("Eggs");
myList.update("Tomatoes", 5);
myList.print();


// REFLECTION
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  // How to create a prototype in javascript, and default parameters values.

// What was the most difficult part of this challenge?
  // To think it in OOP jejej

// Did an array or object make more sense to use and why?
  // The object is a better suitable variable since we have both pieces of information,