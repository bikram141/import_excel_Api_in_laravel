<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Movie;
use App\Imports\MoviesImport;
use Maatwebsite\Excel\Facades\Excel;


class MovieController extends Controller
{
    public function importExportView()
    {
       return view('import');
    }
     
    public function movie_list()
    {
        $movie=Movie::get();
       return view('movielist',['movie'=>$movie]);
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    // public function export() 
    // {
    //     return Excel::download(new MovieImport, 'movie.xlsx');
    // }
     
    /**
    * @return \Illuminate\Support\Collection
    */
    public function import() 
    {
        Excel::import(new MoviesImport,request()->file('file'));
             
        return back();
    }
}
