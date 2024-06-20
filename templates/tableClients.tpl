{include 'htmlStart.tpl'}
<a href='agentes'class="btn btn-outline-danger">Atrás</a>
<table class="table table-success table-striped mt-2 text-center table table-dark">
<thead>
<tr>
<th scope="col">Nombre</th>
<th scope="col">Saldo</th>
<th scope="col">Activado</th>
<th scope="col">Acciones</th>
</tr>
</thead>
<tbody>

{if $clientes == 0}
    <tr>
    <td colspan=5>No hay clientes para mostrar</td>
    </tr>
{/if}

{foreach $clientes as $cliente}
    
    {$class = ($cliente->activado_cliente) ? "activado": ""}
    <tr>
    
    <td>{$cliente->nombre_usuario}</td>
    <td>{$cliente->saldo_cliente}</td>
    
    {$estado = ($cliente->activado_cliente) ?  "Cliente activado" : "Cliente desactivado"}
    <td>{$estado}</td>
    <td>
    <a href='deleteClient/{$cliente->id_cliente}' class=' btn btn-danger'>Eliminar</a>
    </td>
    
    </tr>
{/foreach}

{include 'htmlEnd.tpl'}