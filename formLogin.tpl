{include 'htmlStart.tpl'}
<div class="formLogin">


  <form class="formLogin" action="verify" method="POST">
    <legend class="text-center">Login</legend>

    <label class="col-sm-2 col-form-label">Email</label>
    <input type="text" name="email" class="form-control" placeholder="Ingrese email">

    <label class="form-label">Contraseña</label>
    <input type="password" name="password" class="form-control" placeholder="Ingrese contraseña">


    <button type="submit" class="btn btn-primary col-12">Ingresar</button>
  </form>

</div>

{include 'htmlEnd.tpl'}