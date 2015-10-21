// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it
var name = "Christopher Lee";
console.log(name + " is awesome!");

prompt("What is your favorite food?");
console.log("Hey! That's my favorite too!");
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (x = 1; x <= 100; x++) {
	if (x % 3 == 0 && x % 5 == 0)
      console.log("FizzBuzz");
	else if (x % 5 == 0)
      console.log("Buzz");
  	else if (x % 3 == 0)
      console.log("Fizz");
  	else
      console.log(x);
};


// Functions

// Complete the `minimum` exercise.

var min = function(x, y) {
	if (x > y)
      return y
    else if (x < y)
      return x
    else if (x == y)
      console.log("same values")
    else
      console.log("invalid inputs")
};

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Christopher Lee"
	age: 23
	food: "Pasta, Steak, Hamburger"
	quirk: "I like building computers"
}