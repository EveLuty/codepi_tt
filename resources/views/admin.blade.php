@extends('app') @section('content')
<div class="container-fluid content admin">
	<div class="title">
		<div class="container">
		<div class="row">
			<div class="col-xs-6">
				<h2>Administration des concerts</h2>
			</div>
			<div class="col-xs-offset-3 col-xs-3">
				<button class="btn btn-create" onclick="window.location.href='/admin'">Nouveau Concert</button>
			</div>
		</div>
		</div>
	</div>
	<div class="tab tab-concerts">
		<table class="tab table">
			<tr>
               	<td>Artiste</td>
               	<td>Date</td>
               	<td>Lieu</td>
               	<td>Modifier</td>
               	<td>Supprimer</td>
            </tr>
			@foreach($concerts as $concert)
               <tr>
               	<td>{{$concert->Artiste}}</td>
               	<td>{{$concert->Date}}</td>
               	<td>{{$concert->Lieu}}</td>
               	<td><button class="btn button btn-sm" onclick="window.location.href='/admin/{{$concert->id}}'">Modifier</button></td>
               	<td><button class="btn button btn-sm" onclick="window.location.href='/delete/{{$concert->id}}'">Supprimer</button></td>
               </tr>
            @endforeach
		</table>
		<center>{!! $concerts->render() !!}</center>
	</div>	


</div>

@endSection