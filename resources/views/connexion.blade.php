@extends('app') @section('content')
<div class="container-fluid connexion">
	<div class="row">
		<h1>Connectez-vous</h1>
	</div>
		<form action="login" methode="get">
		<div class="row">
			<label>Email address</label>
    		<input type="email" class="form-control" id="email" name="email" placeholder="Email" value="user@codepi.com">
		</div>
		<div class="row">
			<label>Password</label>
    		<input type="password" class="form-control" id="password" placeholder="Password" value="pwd2015">
		</div>
		<div class="row">
			<br>
			<button class="btn buttonUser" type="submit">Logi in</button>
		</div>
	</form>
	
</div>
@endSection