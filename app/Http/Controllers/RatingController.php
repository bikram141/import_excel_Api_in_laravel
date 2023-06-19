<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Rating;
use App\Imports\RatingsImport;
use Maatwebsite\Excel\Facades\Excel;


class RatingController extends Controller
{
    public function importExportView()
    {
       return view('rating.ratingimport');
    }
     
    public function rating_list()
    {
        $rating=Rating::get();
       return view('rating.ratinglist',['rating'=>$rating]);
    }

    /**
    * @return \Illuminate\Support\Collection
    */

     
    /**
    * @return \Illuminate\Support\Collection
    */
    public function import() 
    {
        Excel::import(new RatingsImport,request()->file('file'));
             
        return back();
    }
}
