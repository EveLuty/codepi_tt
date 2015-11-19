@extends('app') @section('content')
<script></script>
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
            <div class="col-xs-2">
                <h4>
                    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                    Filtrer les concerts    
                </h4>
            </div>
            <div class="col-xs-2">
                Ville :
                <select class="form-control" id="ville" onchange = "filter()">
                    <option >Select Ville</option>
                    @foreach($villes as $oneVille)
                        @if (Session::get('ville') === $oneVille->Ville)
                        <option selected>{{ $oneVille->Ville }}</option>
                        @else
                        <option>{{ $oneVille->Ville }}</option> {{$oneVille}}
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="col-xs-2">
                Tags :
                <select class="form-control" id="tags" onchange = "filter()">
                    <option >Select Tags</option>
                    @foreach($tags as $ontTag)
                        @if (Session::get('tags') === $ontTag->Tags)
                        <option selected>{{ $ontTag->Tags }}</option>
                        @else
                        <option>{{ $ontTag->Tags }}</option>
                        @endif
                    @endforeach
                </select>
            </div>
            <div class="col-xs-2">
                Prix :
                <select class="form-control" id="prix" onchange = "filter()">
                    <option >Select Prix</option>
                    <option value="20">20</option>
                    <option value="30">20-30</option>
                    <option value="31">30+</option>
                </select>
            </div>
            <div class="col-xs-2">
                Entre le
                <input type="date" class="form-control " id="dateDeb" onchange = "filter()">
            </div>
            <div class="col-xs-2">
                et le
                <input type="date" class="form-control " id="dateFin" onchange = "filter()">
            </div>
        </div>
    </div>
</div>
<div class="container content" id="list-concert">

</div>
</div>

<script>window.onload = filter;</script>
@endSection