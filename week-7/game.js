 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Kill the dragon and claim your treasure.
// Overall mission: Claim the treasure.
// Goals: Reduce the dragons hp to 0
// Characters: Hero & Dragon
// Objects: Name, HP, Treasure
// Functions: Hit and Loot

// Pseudocode
//mission brief
//declare objects hero and dragon with properties: name, HP, and treasure
//set hero name to prompt asking for users name
//create function hit - deals random value from 1 to 10 to dragon
//create function loot - when dragon hp is 0 or lower take treasure
//
//

// Initial Code
// var hero = {
// 	name: "",
// 	hp: 100,
// 	treasure: 0
// };
// var dragon = {
// 	name: "Dragneel",
// 	hp: 100,
// 	treasure: 1
// };
// var battle = function() {
// 	if (dragon.hp > 0) {
// 	var damage = Math.floor((Math.random() * 20) + 1)
// 	dragon.hp = dragon.hp - damage;
// 	confirm("Dragneel has " + dragon.hp + " HP left. You dealt " + damage.toString() + " damage that hit!");
// 	}
// 	else {
// 		console.log("The dragon is slain!")
// 	}
// };
// var loot = function() {
// 	dragon.treasure = 0;
// 	hero.treasure = 1;
// };
// var start = confirm("Start Game?");
// if (start === true) {
// 	hero.name = prompt("Hero, enter your name!");
// 	console.log("Hero, " + hero.name + ", your mission is to recover the national treasure stolen by the mythical dragon, Dragneel!");
// 	var enter = confirm("Do you want to enter the dungeon and battle Dragneel? There is no turning back past this point!");
// 	if (enter === true) {
// 	    var hit = confirm("Begin battling Dragneel!");
// 		while (hit === true && dragon.hp > 0) {
// 			battle();
// 		}
// 		if (hit === false && dragon.hp > 0) {
// 			console.log("Don't chicken out now!");
// 		}
// 		else {
// 			console.log("Dragneel is slain!");
// 			var search = confirm("Should we search its body for the treasure?");
// 			if (search === true) {
// 				loot();
// 				console.log("You have obtained the treasure and are now the hero of your country! Congratulations!")
// 			}
// 			else {
// 				console.log("Guess we are leaving empty handed");
// 			}
// 		}
// 	}
// 	else {
// 		console.log("Thats alright! This mission is only for the brave!");
// 	}
// }
// else {
// 	console.log("Good bye");
// }


// Refactored Code

var hero = {
	name: "",
	hp: 100,
	treasure: 0
};
var dragon = {
	name: "Dragneel",
	hp: 100,
	treasure: 1
};
var battle = function() {
	var damage = Math.floor((Math.random() * 20) + 1)
	dragon.hp = dragon.hp - damage;
	confirm("Dragneel has " + dragon.hp + " HP left. You dealt " + damage.toString() + " damage that hit!");
};
var loot = function() {
	dragon.treasure = 0;
	hero.treasure = 1;
};
var start = confirm("Start Game?");
if (start === true) {
	hero.name = prompt("Hero, enter your name!");
	console.log("Hero, " + hero.name + ", your mission is to recover the national treasure stolen by the mythical dragon, Dragneel!");
	var enter = confirm("Do you want to enter the dungeon and battle Dragneel? There is no turning back past this point!");
	if (enter === true) {
	    var hit = confirm("Begin battling Dragneel!");
		while (hit === true && dragon.hp > 0) {
			battle();
		}
		if (hit === false && dragon.hp > 0) {
			console.log("Don't chicken out now!");
		}
		else {
			console.log("Dragneel is slain!");
			var search = confirm("Should we search its body for the treasure?");
			if (search === true) {
				loot();
				console.log("You have obtained the treasure and are now the hero of your country! Congratulations! Here is your mission report:");
				console.log(hero);
				console.log(dragon);
			}
			else {
				console.log("Guess we are leaving empty handed");
			}
		}
	}
	else {
		console.log("Thats alright! This mission is only for the brave!");
	}
}
else {
	console.log("Good bye");
}




// Reflection
// What was the most difficult part of this challenge?
// the most difficult part of this challenge was most definitely the control flow aspect of this challenge. anticipating user input and making the proper response.
// What did you learn about creating objects and functions that interact with one another?
// To be honest, I didn't do anything overly complex with function and object interaction, so not much.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// Math floor and math random were new to me in terms of jS. I have used similar methods in ruby, but they function a lil differently.
// How can you access and manipulate properties of objects?
// You can simple manipulate them by setting a new value or even deleting them.
//
//