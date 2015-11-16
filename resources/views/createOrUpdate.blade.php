@extends('app') @section('content')
<div class="container-fluid content modifier">
	<div class="title">
		<div class="container">
		<div class="row">
			<div class="col-xs-6">
				@if ( !$mode )
                    <h2>Créer un concerts</h2>
                @else
                    <h2>Modifer un concerts</h2>
                @endif
			</div>
		</div>
		</div>
	</div>
	<div class="tab tab-concerts">
		@if ( !$mode )
            <form action="../create" methode="get">
        @else
            <form action="../update/{{$concert->id}}" methode="get">
        @endif
		
		<center><table class="tab table">
			<tr>
				<th>Artiste</th>
				<td>
	                <select class="form-control" name="artiste">
	                    @foreach($artistes as $oneArtiste)
	                    	@if ($mode && ($concert->artiste->Nom) === $oneArtiste->Nom)
	                    		<option selected>{{ $oneArtiste->Nom }}</option>
	                    	@else
	                    		<option>{{ $oneArtiste->Nom }}</option>
	                    	@endif
	                    @endforeach
	                </select>
				</td>
			</tr>
			<tr>
				<th>Lieu</th>
				<td>
					<select class="form-control" name="lieu">
	                    @foreach($lieu as $oneLieu)
	                    	@if ($mode && ($concert->Lieu) === $oneLieu->Lieu)
	                    		<option selected>{{ $oneLieu->Lieu }}</option>
	                    	@else
	                    		<option>{{ $oneLieu->Lieu }}</option>
	                    	@endif
	                    @endforeach
	                </select>
				</td>
			</tr>
			<tr>
				<th>Date</th>
				<td>
					<div class="row">
						@if ($mode)
		            		<div class="col-xs-6"><input type="date" name = "date" class="form-control " value ="{{$dateString}}"></div>
							<div class="col-xs-6"><input type="time" name = "time" class="form-control " value ="{{$timeString}}"></div>
		            	@else
		            		<div class="col-xs-6"><input type="date" name = "date" class="form-control " ></div>
							<div class="col-xs-6"><input type="time" name = "time" class="form-control " ></div>
		            	@endif
						
					</div>
				</td>
			</tr>
			<tr>
				<th>Prix</th>
				<td>
				@if ($mode)
            		<input type="text" class="form-control " name="prix" placeholder="prix..." value="{{$concert->Prix}}">
            	@else
            		<input type="text" class="form-control " name="prix" placeholder="prix..." >
            	@endif
				</td>
			</tr>
		</table>
	<hr>
	<button class="btn button btn-sm" type="submit">Valider</button>
	<button class="btn button btn-sm" type="button" onclick="history.go(-1)">Annuler</button>
	</center>
</form>
	</div>	


</div>

@endSection