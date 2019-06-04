function burgerMenu() {
  var x = document.getElementById("burgerNav");
  if (x.className === "c-navbar") {
    x.className += " responsive";
  } else {
    x.className = "c-navbar";
  }
}