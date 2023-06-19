<?php

namespace App\Imports;

use App\Models\Movie;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithValidation;

class MoviesImport implements ToModel

{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Movie([
            'tconst'=> $row[0],
            'titleType'=> $row[1], 
            'primaryTitle'=> $row[2], 
            'runtimeMinutes' => $row[3], 
            'genres'=> $row[4] 
        ]);
    }
}
