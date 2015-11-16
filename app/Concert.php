<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Concert extends Model
{
	public $timestamps = false;
	protected $fillable = array('Artiste', 'Lieu', 'Adresse','Ville','Date','Prix','id');
    public function artiste()
    {
        return $this->belongsTo('App\Artiste', 'Artiste', 'Nom');
    }
}
