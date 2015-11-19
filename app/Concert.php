<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Artiste;
use DB;
use DateTime;

class Concert extends Model
{
	public $timestamps = false;
	protected $fillable = array('Artiste', 'Lieu', 'Adresse','Ville','Date','Prix','id');
    public function artiste()
    {
        return $this->belongsTo('App\Artiste', 'Artiste', 'Nom');
    }

    public function scopeBegin($query)
    {
        return $query;
    }

    public function scopeVille($query, $ville)
    {
        return $query->where('Ville', '=', $ville);
    }
    public function scopeTags($query, $tags)
    {

        return $query->whereHas('artiste', function($q) use($tags) {$q->where('Tags', '=', $tags);});
    }
    public function scopePrix($query, $prix)
    {
    	if($prix == 20){
       		return $query->where('Prix', '<=', $prix);
    	}elseif ($prix ==30){
    		$query->where('Prix', '<=', $prix);
    		$query->where('Prix', '>', 20);
    		return $query;
    	}elseif ($prix ==31){
    		return $query->where('Prix', '>=', $prix);
    	}
    }
    public function scopeDateDeb($query, $dateDeb)
    {
    	$_dateTemp = DateTime::createFromFormat('Y-m-d', $dateDeb);
        $date =$_dateTemp->format('Y-m-d'); 
        $_timeTemp= DateTime::createFromFormat('H:i', '00:00');
        $time= $_timeTemp->format('H:i:s'); 
        $datetime = $date . ' ' . $time; 
        return $query->where('Date', '>=', $datetime);
    }
    public function scopeDateFin($query, $dateFin)
    {
    	$_dateTemp = DateTime::createFromFormat('Y-m-d', $dateFin);
        $date =$_dateTemp->format('Y-m-d'); 
        $_timeTemp= DateTime::createFromFormat('H:i', '00:00');
        $time= $_timeTemp->format('H:i:s'); 
        $datetime = $date . ' ' . $time; 
        return $query->where('Date', '<=', $datetime);
    }
}
