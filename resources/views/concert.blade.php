@extends('app') @section('content')
<div class="concert">
</div>
<div class="container content">
    <div class="panel-concert">
        <div class="concert-title">
            <div class="row">
                <div class="col-xs-8">
                    <label>{{$concert->artiste->Nom}} @ {{$concert->Lieu}} - {{$concert->Ville}}</label>
                </div>
                <div class="col-xs-4 ">
                    <a href="/" class="nav floatR">Retour à la liste des concerts >></a>
                </div>
            </div>
        </div>
        <hr>
        <div class="concert-image">
            <div class="row">
                <div class="col-xs-12">
                    <img src="/assets/images/{{$concert->artiste->Image}}" width="100%">
                </div>
            </div>
        </div>
        <hr>
        <div class="concert-description">
            <div class="row">
                <div class="col-xs-12">
                    <p>{{$concert->artiste->Description}}</p>
                </div>
            </div>
        </div>
        <br>
        <div class="concert-video">
            <h3><u>La vidéo de l'artiste</u></h3>
            <div class="row">
                <div class="col-xs-12">
                    <center>
                        <iframe id="ytplayer" type="text/html" width="640" height="390" src="http://www.youtube.com/embed/?listType=search&list={{$concert->artiste->Nom}}" frameborder="0"></iframe>
                    </center>
                </div>
            </div>
        </div>
        <hr>
        <div class="nav">
            <a href="/" class="floatL"><< Retour à la liste des concerts</a>
            <a href="#" class="floatR">Retour en haut de page</a>
        </div>
    </div>
    <div class="panel-pre-commander">
        <h2>Pré-commandez</h2>
        <p>Commandez votre place pour le concert de {{$concert->artiste->Nom}}</p>
        <table class="tab table">
            <tr>
                <th>Date</th>
                <td>{{$concert->Date}}</td>
            </tr>
            <tr>
                <th>Lieu</th>
                <td>{{$concert->Lieu}}</td>
            </tr>
            <tr>
                <th>Adresse</th>
                <td>{{$concert->Adresse}}</td>
            </tr>
            <tr>
                <th>Ville</th>
                <td>{{$concert->Ville}}</td>
            </tr>
        </table>
        <hr>
        <center><h3>Map</h3></center>
        <div class="carte-google">
            <iframe width="100%" height="300px" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyC8VMMvjIxZ-BQybv-EK2dwEnuF9uo_V1w&q={{$concert->Adresse}}, {{$concert->Ville}}" allowfullscreen>
            </iframe>
        </div>
        <hr>
        <div class="btn-precommander">
            <center><button type="button" class="btn btn-primary btn-lg">
            <span class="glyphicon glyphicon-shopping-cart btn-md" aria-hidden="true"></span>
            Pré-commander !</button>
        </center>
        </div>
    </div>
</div>
@endSection