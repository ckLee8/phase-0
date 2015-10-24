function sum(arr) {
    var sum = 0
  for(var i = 0; i < arr.length; i++) {
    sum += arr[i]
  }
  return sum
}
//User plugs some set of numbers into the program sum. The program goes through each number and tallies it to a counter named sum. The program will return the value of sum.

function median(arr) {
  arr = arr.sort();
  var half = Math.floor(arr.length / 2);
  return (arr[half] + arr[half + 1])/2
}
// User plugs some set of numbers into the program median. The program sorts the number from least to greatest. The program finds and returns the number in the middle or the average of the two middle numbers (if there are an even number of numbers)

function mean(arr) {
  return sum(arr)/arr.length
}
//User plugs some set of numbers into the program mean. This program uses the sum program to get a total and divides that value by the number of numbers. It returns outcome.