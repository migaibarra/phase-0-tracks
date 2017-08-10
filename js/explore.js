// JavaScript practice for Ex 7.1 Release 4
// Coded by Miguel A. Ibarra, Jr

// initializing several strings to implement a string reverse method

var testOne = "concatenation";
var testTwo = "DeBakey"
var testThree = "Hannah" // The capital character luckly does not make it a palindrome
var testFour = "madam"

// Look at string and for each character redefine it to a new string

// Now let's do a function of the word reverser
function reverser(word) {
	// Define a reversed string to take in an array of characters
	var reversed = new Array();

	for (var i = word.length; i >= 0; i-=1) {
		// Push each character string into the reversed array
		reversed.push(word[i]);
	}
	// Join the array into a word
	wordReversed = reversed.join("");

	// Conditional for palidromes:
	if (word == wordReversed) {
		console.log("Not fair, " + word + " is a palidrome!");
	} else { }
	return wordReversed;
}

resultOne = reverser(testOne);
resultTwo = reverser(testTwo);
resultThree = reverser(testThree);
resultFour = reverser(testFour)


// Print the words onto the console
console.log(testOne + " when reversed is " + resultOne);
console.log(testTwo + " when reversed is " + resultTwo);
console.log(testThree + " when reversed is " + resultThree);
