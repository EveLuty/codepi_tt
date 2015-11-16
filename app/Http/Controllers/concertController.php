<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Concert;
use App\Artiste;
use DateTime;
use Carbon;

class concertController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $mode=false;
        $artistes = Artiste::distinct()->select('Nom')->get();
        $lieu = Concert::distinct()->select('Lieu')->get();
        return view('createOrUpdate',compact('mode','lieu','artistes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $_date = $request->input("date");
        $_dateTemp = DateTime::createFromFormat('Y-m-d', $_date);
        $date =$_dateTemp->format('d/m/Y'); 
        $_time = $request->input("time");
        $_timeTemp= DateTime::createFromFormat('H:i', $_time);
        $time= $_timeTemp->format('H:i:s'); 
        $datetime = $date . ' ' . $time; 

        $concert = Concert::create([
            'Artiste' => $request->input("artiste"),
            'Lieu' => $request->input("lieu"),
            'Date' => $datetime,
            'Prix' => (double)($request->input("prix"))
            ]);
        return redirect('/login');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $concert = Concert::findOrFail($id);
        
        return view('concert',compact('concert'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $mode=true;
        $concert = Concert::findOrFail($id);
        $myDateTime = DateTime::createFromFormat('d/m/Y H:i:s', $concert->Date);
        $dateString = $myDateTime->format('Y-m-d'); 
        $timeString = $myDateTime->format('H:i'); 

        $artistes = Artiste::distinct()->select('Nom')->get();
        $lieu = Concert::distinct()->select('Lieu')->get();
        return view('createOrUpdate',compact('mode','lieu','artistes','concert','dateString','timeString'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $concert = Concert::find($id);
        $concert->Artiste = $request->input("artiste");
        $concert->Lieu = $request->input("lieu");
        $_date = $request->input("date");
        $_dateTemp = DateTime::createFromFormat('Y-m-d', $_date);
        $date =$_dateTemp->format('d/m/Y'); 
        $_time = $request->input("time");
        $_timeTemp= DateTime::createFromFormat('H:i', $_time);
        $time= $_timeTemp->format('H:i:s'); 
        $datetime = $date . ' ' . $time; 
        $concert->Date = $datetime;
        $concert->Prix = (double)($request->input("prix"));
        
        $concert->save();
        return redirect('/login');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Concert::destroy($id);
        return redirect('/login');
    }
}
