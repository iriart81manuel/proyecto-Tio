{include 'htmlStart.tpl'}

<a href='clientes'class="btn btn-outline-danger">Atrás</a>

<form class="col-3 m-auto" action="editClient" method="POST">
 <div class="formulario">
    
      <legend class="text-center">Editar Cliente</legend>
      <div class="mb-3">
        <label class="form-label">Nombre de Cliente</label>
        <input type="text" name="nombre_usuario" class="form-control" value = "{$cliente->nombre_usuario}">
      </div>
      <div class="mb-3">
        <label class="form-label">Saldo</label>
        <input type="double" name="saldo_cliente" class="form-control" value= "{$cliente->saldo_cliente}">
      </div>
      <div class="mb-3">
        <label class="form-label">Estado de Cliente(1-activado 0-desactivado)</label>
        <input type="text" name="activado_cliente" class="form-control" value="{$cliente->activado_cliente}">
      </div>
    <div class="mb-3">

      <input type="text" name="id_cliente" value= "{$cliente->id_cliente}"hidden>
    </div>
</div>

    <button type="submit" class="btn btn-primary col-12">Editar</button>
</form>

{include 'htmlEnd.tpl'}