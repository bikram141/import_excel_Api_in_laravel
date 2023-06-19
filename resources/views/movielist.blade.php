<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Movie list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
  <body>

    <div class="card">
        <div class="card-body">
            <div class="col-12 mx-auto float-right">
                <a class="btn btn-dark btn-sm text-center" href="{{ url()->previous() }}">back</a>
              </div>
         <h1> Movie List.</h1>
        
        </div>
      </div>
    <table class="table">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">tconst</th>
            <th scope="col">titleType</th>
            <th scope="col">primaryTitle</th>
            <th scope="col">runtimeMinutes</th>
            <th scope="col">genres</th>
          </tr>
        </thead>
        <tbody>
            @foreach($movie as $item)
          <tr>
            <th scope="row">{{$item->id}}</th>
            <td>{{$item->tconst}}</td>
            <td>{{$item->titleType}}</td>
            <td>{{$item->primaryTitle}}</td>
            <td>{{$item->runtimeMinutes}}</td>
            <td>{{$item->genres}}</td>
          </tr>
        @endforeach
        </tbody>
      </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>