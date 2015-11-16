<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artiste extends Model
{
	public $timestamps = false;
	protected $fillable = array('Nom', 'Description', 'Image','Tags');
    public function concert()
    {
        return $this->hasMany('App\Concert','Nom', 'Artiste');
    }
}
