
<!DOCTYPE html>
<html lang="en">
<head>
<base href={$base}>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Casino</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Casino Bet30</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="agentes">Agentes</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="clientes">Clientes</a>
  </li>
  {if !$logged}
    <li class="nav-item">
      <a class="nav-link" href="login">Iniciar Sesion</a>
    </li>
    {else}
    <li class="nav-item">
      <a class="nav-link" href="logout">Cerrar Sesion</a>
    </li>
  {/if}
   
</ul>
    </div>
</nav>
