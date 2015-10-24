 // JavaScript Olympics

// I paired [by myself, with: Noah Heinrich] on this challenge.

// This challenge took me [1] hours.


// Warm Up



// Bulk Up
var athletes = [{name: "John", events: "Hockey"}, {name: "Noah", events: "Fencing"}, {name: "Chris", events: "Golf"}, {name: "Sarah", events: "Swimming"}]
var winAdd = function(array) {
  var x;
  for (x = 0; x < athletes.length; x++) {
    athletes[x].win = athletes[x].name + " won the " + athletes[x].events + " title.";
    console.log(athletes[x]);
  }
}
winAdd(athletes);



// Jumble your words
var words = "This is a string";
var jumble = function(string) {
  var newString = string.split("").reverse().join("");
  console.log(newString)
}
jumble(words);

// 2,4,6,8
var numbers = [1, 2, 3, 4, 5];
var even = function(array) {
  var x;
  for (x = 0; x < array.length; x++) {
    if (array[x] % 2 == 0)
      console.log(array[x]);
  }
}
even(numbers);


// "We built this city"
function Athlete(person, age, sport, quote){
  this.name = person;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// My use of objects and object constructors was solidied. It was particularly satisfying to figure out how to nest objects within an array.
// What are constructor functions?
// Constructor functions are functions that allow someone to create objects with specified properties.
// How are constructors different from Ruby classes (in your research)?
// Constructors are very difference from ruby classes in that the way formatted. For one objects are "methods" in jS. Also properties can be made and accessed lot more simply in jS.