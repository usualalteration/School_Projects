<!DOCTYPE html>
<html>
<head>
<title>Risoluzione equazioni lineari di secondo grado</title>
</head>

<body>

<h1> Risoluzione equazioni lineari di secondo grado </h1> <br>
<hr>
<h2>Inserisci i coefficienti dell'equazione nelle apposite caselle:</h2><br>
<form action="/calcola.php" method="get">
<!-- coefficienti dell'equazione -->
<input type="number" id="coeff_a" name="a" value="0" required minlength="1" maxlength="8" size="4">
<label for="coeff_a">x^2 + </label>
<input type="number" id="coeff_b" name="b" value="0" required minlength="1" maxlength="8" size="4">
<label for="coeff_b">x + </label>
<input type="number" id="coeff_c" name="c" value="0" required minlength="1" maxlength="8" size="4">
<label for="coeff_c"> =0 </label>
<br>
Premi il tasto "risolvi" per calcolare.
<br>
<button valign=center>Risolvi</button>

</form>

</body>
</html>
