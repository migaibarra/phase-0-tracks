// Algos.js problem
// Coded by Miguel A. Ibarra, Jr

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

console.log(samplePhrases[0])
