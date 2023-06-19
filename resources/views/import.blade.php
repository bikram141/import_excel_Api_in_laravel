<!DOCTYPE html>
<html>
<head>
    <title>Movie Import Export</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
</head>
<body>
   
<div class="container">
    <a class="btn btn-dark btn-sm text-center" href="{{ url('/') }}">back</a>
    <div class="card bg-light mt-3">
       
        <div class="card-header">
            Movies import page
        </div>
        <div class="card-body">
            <form action="{{ route('import') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="file" name="file" class="form-control" required>
                <br>
                <button class="btn btn-success" type="submit">Import movie Data</button>
            </form>
        </div>
      
    </div>
</div>

<div class="col-12 mx-auto float-right">
    <a class="btn btn-success text-center" href="{{ route('movie_list') }}">Show Movies Data List</a>
  </div>
   
</body>
</html>