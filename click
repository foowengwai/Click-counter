# Click-counter
<!DOCTYPE html>
<html>
<head>
<script>
localStorage.clickcount = 0
function clickCounter() {
  if (typeof(Storage) !== "undefined") {
    if (localStorage.clickcount) {
      localStorage.clickcount = Number(localStorage.clickcount)+1;
    } else {
      localStorage.clickcount = 1;
    }
    document.getElementById("result").innerHTML = "You have clicked the button " + localStorage.clickcount + " time(s).";
  } else {
    document.getElementById("result").innerHTML = "Sorry, your browser does not support web storage...";
  }
}

</script>
<style>
.button1 {
  font-size: 300px;
  width: 100%;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}

</style>
</head>
<body>

<p><button class="button button1" onclick="clickCounter()" type="button">Click me!</button></p>
<div id="result"></div>
<p>Reload page to reset the count

</body>
</html>
