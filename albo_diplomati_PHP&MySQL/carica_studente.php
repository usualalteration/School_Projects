<?php
require_once 'head.php';
?>
<body>
	<h1 align="center">
		Carica studente
	</h1>
	<table align="center">
		<tr>
			<td>
				<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
					Cognome: <input type="text" name="cognome" placeholder="Cognome">
					<br>
					Nome: <input type="text" name="nome" placeholder="Nome">
					<br>
					Residenza: <select name="citta">
					<br>
					Anno diploma: <select anno="anno">
					<br>
					Corso: <select corso="corso">
					<br>
					Voto: <select voto="voto"> <!--TODO creare tabelle corso e voto-->
					<br>
					
					
						<?php
						require_once 'config.php';
						$conn = getdb();
						$selectCitta = "SELECT idCitta, nomeCitta From citta ORDER BY nomeCitta";
						$resultCitta = mysqli_query($conn, $selectCitta);

						while($row = $resultCitta->fetch_assoc()){
							echo "<option value = '" . $row["idCitta"] . "'>" . $row["nomeCitta"] . "</option>";
						}
						?>
					</select>
					<br>
					<input type="submit" name="submit" value="Carica">
				</form>
			</td>
		</tr>
	</table>
	<?php
	if(isset($_POST['submit']))
	{
		$cognome = $_POST['cognome'];
		$nome = $_POST['nome'];
		$residenza = $_POST['residenza'];
		$anno_diploma = $_POST['anno_diploma'];
		$corso = $_POST['corso'];
		$voto = $_POST['voto'];

		if($cognome != null && $nome != null && $citta != null && $residenza != null && $anno_diploma != null && $corso != null && $voto != null){
			$insertUtente = "INSERT INTO utenti (cognome, nome, residenza, anno_diploma, corso, voto) VALUES ('$cognome', '$nome', '$residenza', '$corso', '$voto')";
			$resultUtente = mysqli_query($conn, $insertUtente);

			$selectCittaSel = "SELECT * FROM residenza WHERE ID = '$citta'";
			$resultCittaSel = mysqli_query($conn, $selectCittaSel);

			while($row = $resultCittaSel->fetch_assoc()){
				$citta = $row["nomeCitta"];
			}

			echo "<p align='center'><strong>$cognome $nome residente a $citta in $indirizzo</strong>" . 
			"<br><br>è stato caricato correttamente!</p>";
		}
		else{
			echo "<p align='center'><strong>Compila tutti i campi correttamente!</p>";
		}
	}
	?>
</body>
</html>