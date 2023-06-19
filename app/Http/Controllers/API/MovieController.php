<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Movie;
use DB;

class MovieController extends Controller
{
    public function longestdurationmovies(){
        $movie=Movie::orderBy("runtimeMinutes", "desc")->select('tconst','primaryTitle','runtimeMinutes','genres')->take(10)->get();
        $response['status'] = "true";
        $response['message'] = "Highest movie duration";
        $response['data'] = $movie;
        return response()->json($response);
    }
    public function createmovies(Request $request){
        $movie = new Movie();
        $movie->tconst = $request->tconst;
        $movie->titleType = $request->titleType;
        $movie->primaryTitle = $request->primaryTitle;
        $movie->runtimeMinutes = $request->runtimeMinutes;
        $movie->genres = $request->genres;
        $movie->save();
        $response['status'] = "true";
        $response['message'] = "movie Create Successfully!";
        return response()->json($response);
    }
    public function topratedmovies(){
        $movie = Movie::join('ratings', 'ratings.tconst', '=', 'movies.tconst')
        ->select('movies.tconst','movies.primaryTitle','ratings.averageRating','movies.genres')
            ->where('ratings.averageRating','>','6.0')
            ->get();
        $response['status'] = "true";
        $response['message'] = "Top Rated movies";
        $response['data'] = $movie;
        return response()->json($response);
    }
    public function genreMovies(){
        $movie =  DB::table('movies')->join('ratings', 'ratings.tconst', '=', 'movies.tconst')
        ->select('movies.genres',DB::raw('SUM(ratings.numVotes) as Total'))
        ->groupBy('movies.genres')
            ->get();  
        $response['status'] = "true";
        $response['message'] = "genre-movies-with-subtotals";
        $response['data'] = $movie;
        return response()->json($response);
    }
    
    public function updateruntimeminutes(Request $request){
       
        $genres = $request->genres;
        //$movie = Movie::where('genres',$genres)->get();

        if($genres == "Documentary"){
            DB::table('movies')
            ->where('genres', $genres)
            ->update([
       'runtimeMinutes' => DB::raw('runtimeMinutes + 30'),
   ]);


        }else if($genres == "Animation"){
            DB::table('movies')
            ->where('genres', $genres)
            ->update([
       'runtimeMinutes' => DB::raw('runtimeMinutes + 30'),
   ]);
        }else{

            DB::table('movies')
            ->where('genres', $genres)
            ->update([
       'runtimeMinutes' => DB::raw('runtimeMinutes + 45'),
   ]);
        }

        $response['status'] = "true";
        $response['message'] = "Run Time update Successfully!";
        return response()->json($response);
    }
}
