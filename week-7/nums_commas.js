// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
//define function separateComma with arguement: number (int)
//set variable num to empty array
//set num to number after its been converted to array
//reverse num array values
//iterate through num array --> insert a comma after every 3 numbers
//reverse array 
//convert array into string

// Initial Solution
var separateComma = function(number) {
	var num = [];
	num = number.toString().split("").reverse()
	var x;
	if (num.length > 3) {
	    for (x = 3; x < num.length; x+=4) {
            num.splice(x, 0, ",");
	    }
	}
	return num.reverse().join("")
}



// Refactored Solution
var separateComma = function(number) {
	var num = number.toString().split("").reverse();
	if (num.length > 3) {
	    for (var x = 3; x < num.length; x+=4) {
            num.splice(x, 0, ",");
	    }
	}
	return num.reverse().join("");
};



// Your Own Tests (OPTIONAL)
separateComma(123)
separateComma(123456)
separateComma(12345678)


// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//Nope. Had the same logic involved as in ruby. Different syntax and methods, but same ideas.
//What did you learn about iterating over arrays in JavaScript?
//I like the succinctness of for loops in jS. I prefer it.
//What was different about solving this problem in JavaScript?
//I might have used a .each in ruby, but was kinda forced into using a loop.
//What built-in methods did you find to incorporate in your refactored solution?
//nothing. I simply cut down some redundancies and DRY'd out the code.