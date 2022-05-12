<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

	<section>
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h1>LOGIN</h1>
				</div>
			</div>
			<div class="row text-center" style="margin: 2em 0">
				<form role="form" class="form-horizontal" action="" method="POST">
					<div class="row">
						<div class="col-sm-4">
						<label class="sr-only" for="inputLogin">Benutzername</label>
						<input type="text" id="inputLogin" class="form-control input-lg" name="login" placeholder="Benutzername">
						</div>
						<div class="col-sm-4">
						<label class="sr-only" for="inputPassword">Password</label>
						<input type="password" id="inputPassword" class="form-control input-lg" name="pass" placeholder="Passwort">
						</div>
						<div class="col-sm-4">
						<button type="submit" class="btn btn-success btn-lg btn-block">Anmelden</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</section>

</body>
</html>
