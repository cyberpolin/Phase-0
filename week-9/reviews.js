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

list_items = {}

function List (name) {
  this.name =  name;
  console.log("You have succsesfully created a list named:" + this.name);
  this.add = function (item, value){
    if (value == undefined){// TO IMPROVE
      value = 1;
    }
    list_items[item] = value;
    console.log(list_items)
  }
  this.remove = function (item){
    delete list_items.item;
    console.log(list_items);
  }
}

var myList = new List("Super Market");
myList.add("Eggs");
myList.remove("Eggs");
console.log(myList.constructor);
console.log(myList.name);


