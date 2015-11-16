<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Session;
use App\Artiste;
use App\Concert;

class mainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $artistes = Artiste::all();
        $concerts = Concert::paginate(9);
        $villes = Concert::distinct()->select('Ville')->get();
        $tags = Artiste::distinct()->select('Tags')->get();
        return view('index',compact('artistes','concerts','villes','tags'));
    }

    public function validateConnexion()
    {
        $email = Input::post('email');
        $password = Input::post('password');
        return "Email: " . $email . " and Password: " . $password;
    }

    
    public function toConnexion()
    {
        return view('connexion');
    }

    public function connexion(Request $request)
    {
        //because the function of login is not need for this test
            $resultat = $request->input('email');
            Session::put('user', $resultat);
            $concerts = Concert::paginate(9);
            return view('admin',compact('concerts'));
    }

    public function deConnexion()
    {
        if (Session::get('user') !== null){
            Session::forget('user');
        }
        return redirect('/');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
