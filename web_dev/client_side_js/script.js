console.log("The script is running!");

function rocketship(event) {
	console.log(event)
	var rocketIn = document.createElement("IMG");
	var node = document.getElementById("P");
	rocketIn.src = "spaceship.png";
	rocketIn.style.zIndex = "1";
	rocketIn.style.position = "relative";
	rocketIn.style.marginTop = "-50%";
	// document.body.appendChild(rocketIn);
	document.body.insertBefore(rocketIn, node);
}

var photo = document.getElementById("planet");
photo.addEventListener("click", rocketship);