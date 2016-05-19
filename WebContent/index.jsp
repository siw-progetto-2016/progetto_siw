<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
<title>Pagina principale</title>
</head>
<body>
	<div>
		<h2>Login utente</h2>
		<div>
			<div class="form_container">
				<form action="controller" method="post">
					<div class="form-group">
						<p>${idError}</p>
						<label>id utente</label> <input type="text" class="form-control"
							placeholder="Id" name="id"  value='${param["id"]}' />
					</div>
					<div class="form-group">
						<p>${pwdError}</p>
						<label>Password</label> <input type="text" class="form-control"
							placeholder="Password" name="pwd" value='${param["pwd"]}' />
					</div>
					<button type="submit">Invia</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
