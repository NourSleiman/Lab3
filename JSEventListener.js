//Event listener on mouse click that calls the count function
document.getElementById("submit").addEventListener("click", count);

let wordLength = "Word length: ";

//Returns the character length of the inputted word without whitespace
function count() {
  let str = document.getElementById("word").value;
  //remove whitespace
  let cleanText = str.replace(/ /g, "");
  document.getElementById("printLength").innerHTML =
    wordLength + cleanText.length;
}
