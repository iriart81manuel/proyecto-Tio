{include 'htmlStart.tpl'}

<a href='agentes'class="btn btn-outline-danger">Atrás</a>

<form class="col-3 m-auto" action="editAgent" method="POST">
 <div class="formulario">
    
      <legend class="text-center">Editar Agente</legend>
      <div class="mb-3">
        <label class="form-label">Nombre de Agente</label>
        <input type="text" name="nombre" class="form-control" value = "{$agente->nombre}">
      </div>
      <div class="mb-3">
        <label class="form-label">Saldo</label>
        <input type="double" name="saldo" class="form-control" value= "{$agente->saldo}">
      </div>
    <div class="mb-3">
      <label class="form-label">Email</label>
      <input type="text" name="email" class="form-control" value="{$agente->email}">
    </div>
      <div class="mb-3">
        <label class="form-label">Estado de agente(1-activado 0-desactivado)</label>
        <input type="text" name="activado" class="form-control" value="{$agente->activado}" placeholder="1-activado 2-desactivado">
      </div>
    <div class="mb-3">

      <input type="text" name="id_agente" value= "{$agente->id_agente}"hidden>
    </div>
</div>

    <button type="submit" class="btn btn-primary col-12">Editar</button>
</form>

{include 'htmlEnd.tpl'}