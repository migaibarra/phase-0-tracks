// Algos.js problem
// Coded by Miguel A. Ibarra, Jr


// RELEASE 0:
var samplePhrases = ["Hey!", "Wazzup!", "Aloha", "How's it goin'!"], charCount = [];

// The following code sorts the characters by implementing the bubble sort algorithm to get
// the phrase with the longest character count

for(counter = 0; counter< samplePhrases.length; counter ++){
	charCount[counter] = samplePhrases[counter].length
}

function bubbleSort(phraseArray){
	for(counter = 1; counter < phraseArray.length; counter ++){
		if(phraseArray[counter].length > phraseArray[counter - 1].length){
			phraseArray[counter] = phraseArray.splice(counter-1, 1, phraseArray[counter])[0];
		}
	}
	return phraseArray
}

// While loop to continue sorting using Bubble sort until the longest phrase is at index 0
while(samplePhrases[0].length != Math.max.apply(Math, charCount)){
	samplePhrases = bubbleSort(samplePhrases);
}

// Outputing longest phrase:
console.log(samplePhrases[0])


// RELEASE 1:

var person1 = {name: "Steven", age: 54}, person2 = {name: "Tamir", age: 54},
	animal1 = {animal: "Dog", legs: 4}, animal2 = {animal: "Dog", legs: 3},
	fireman = {name: "Mark", vehicle: "firetruck", likes_donuts: "yes", uniform_color: "red"}
	policeman = {name: "Bob", vehicle: "policecar", likes_donuts: "no", uniform_color: "blue"}
	mountainclimber = {codename: "Mark", occupation: "scalar"}

// a function to see if a value in the key-value pair matches 
function matcher(object1, object2){
	var values1 = Object.values(object1), values2 = Object.values(object2), flag = false
	for(counter1 = 0; counter1 < values1.length; counter1 ++){
		for(counter2 = 0; counter2 < values2.length; counter2 ++){
			if(values1[counter1] == values2[counter2]){
				flag = true
			}else{}
		}
	}
	return flag
}

// Driver Code:
console.log(matcher(person1, person2)) // should be true
console.log(matcher(animal1, animal2)) // should be true
console.log(matcher(person1, animal1)) // should equal false
console.log(matcher(fireman, policeman)) // should equal false
console.log(matcher(fireman, mountainclimber)) // should equal true
console.log(matcher(mountainclimber, policeman)) //should equal false

// RELEASE 2:

var arrayLength = 17, randomWords = new Array(arrayLength),
	// An array of all characters in the English language:
	chars = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
			 "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
			 "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
			 "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];

// This loop creates a "random" word of varying length of 1 to 10 characters
// Please note, these words are not truely random, but rather psuedorandom
for (i = 0; i <= arrayLength; i++){
	var wordLength = Math.floor((Math.random() * 10)), word = new Array();
	for(j = 0; j <= wordLength; j++){
		word.push(chars[Math.floor((Math.random() * 52))]);
	}
	randomWords[i] = word.join("");
}

// Driver Code:
console.log(randomWords) // lists the array of random words

for(counter = 0; counter< randomWords.length; counter ++){
	charCount[counter] = randomWords[counter].length
}

// While loop to continue sorting using Bubble sort until the longest phrase is at index 0
while(randomWords[0].length != Math.max.apply(Math, charCount)){
	randomWords = bubbleSort(randomWords);
}

console.log(randomWords[0]) // returns the longest random word