<?php
require_once 'head.php';
?>
<body>
	<div align="center">
		<form action="elenco_studenti_citta.php" method="post">
			<h2 align="center">Cerca studenti per città</h2>
			<p>Scegli una città dell'elenco per visualizzare i rispettivi studenti</p>
			<select name="citta">
				<?php
				require_once 'config.php';
				$conn = getdb();
				$selectCitta = "SELECT DISTINCT citta.nomeCitta, utenti.citta From citta INNER JOIN utenti WHERE citta.idCitta = utenti.citta ORDER BY citta";
				$resultCitta = mysqli_query($conn, $selectCitta);

				while($row = $resultCitta->fetch_assoc()){
					echo "<option value = '" . $row["citta"] . "'>" . $row["nomeCitta"] . "</option>";
				}
				?>
				<input type="submit" name="invio" value="Cerca" />
			</form>
		</body>
	</div>
	</html>