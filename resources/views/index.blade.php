@extends('app') @section('content')
<div class="filter">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">
                <h1>
                    Parcourir les concerts à venir</p>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 col-xs-offset-1">
                <h4>
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                    Filtrer les concerts    
                </h4>
            </div>
            <div class="col-xs-2">
                Ville :
                <select class="form-control" onchange = "filter(this.value)">
                    @foreach($villes as $oneVille)
                    <option>{{ $oneVille->Ville }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-xs-1">
                Tags :
                <select class="form-control">
                    @foreach($tags as $ontTag)
                    <option>{{ $ontTag->Tags }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-xs-1">
                Prix :
                <select class="form-control" id=>
                    <option value="20">
                        <20</option>
                            <option value="30">20-30</option>
                            <option value="31">30+</option>
                </select>
            </div>
            <div class="col-xs-2">
                Entre le
                <input type="datetime" class="form-control ">
            </div>
            <div class="col-xs-2">
                et le
                <input type="date" class="form-control ">
            </div>
        </div>
    </div>
</div>
<div class="container content" id="list-concert">
    <div class="row">
        <?php foreach ($concerts as $concert): ?>
            <div class="col-xs-4 concert-content container">
                <h5><b>{{ $concert->artiste->Nom }}</b> <span style="float:right">@ {{ $concert->Lieu}} - {{ $concert->Ville }}<span></h5>
                <a href="{{action('concertController@show', [$concert->id])}}" >
                	<img src="assets/images/{{ $concert->artiste->Image }}" class="img-rounded" height="250" width="100%">
                </a>
                <br>
                <div class="col-xs-8">
                    {{ $concert->Date }}
                </div>
                <div class="col-xs-4">
                    Prix:{{ $concert->Prix }}
                </div>
                <br>
                <div class="col-xs-8">
                    <i>{{ $concert->artiste->Tags }}</i>
                </div>
                <div class="col-xs-4">
                    <a href="{{action('concertController@show', [$concert->id])}}" >Voir le détails ></a>
                </div>
            </div>
            <?php endforeach; ?>
    </div>
    <div class="container-fluid">
          <center>
          	<?php echo $concerts->render(); ?>
        </center>
</div>
</div>
</div>


@endSection