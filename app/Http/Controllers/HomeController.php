<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Area;

class HomeController extends Controller
{


    public function index()
    {

        $provinsi = Area::get()->toTree();

        return view('home')->with('provinsi' , $provinsi);
    }
}
