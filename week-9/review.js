//pseudocode
//define function reverse that takes some parameter(string)
//declare empty string variable
//iterate through string from last character to first
//append character to empty string
//return string



//initial
// function Reverse(str) { 
// 	var strg = "";
//   	for (i = str.length; i > -1; i--) {
//     strg = strg.concat(str.charAt(i));
//     }
//   	return strg; 
// }


//refactor
function Reverse(str) { 
	var strg = "";
  	for (i = str.length; i > -1; i--) {
    strg = strg.concat(str.charAt(i));
    }
  	return strg; 
}




//reflection
// What concepts did you solidify in working on this challenge? 
// using proper psuedocode and planning to make the translation from logic to code as smooth as possible.
// What was the most difficult part of this challenge?
// finding the proper jS methods. (concat & charAt)
// Did you solve the problem in a new way this time?
// Yes. Last time, in ruby I believe I iterated from the beginnning of the string to the end, but this time I reversed it. it make the code have less steps.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// Yes, similar logic, but more efficient and different methods employed.