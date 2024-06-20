{include 'htmlStart.tpl'}

{include 'formAddClientes.tpl'}

<table class="table table-success table-striped mt-2 text-center table table-dark">
    <thead>
        <tr>
            <th scope="col">Nombre</th>
            <th scope="col">Saldo</th>
            <th scope="col">Estado</th>
            <th scope="col">Acciones</th>
            <th scope="col">Agente Padre</th>
        </tr>
    </thead>
    <tbody>

        {if $clientes == 0}
            <tr>
                <td colspan=5>No hay clientes para mostrar</td>
            </tr>
        {/if}

    {foreach $clientes as $cliente}
       
        <tr>

        {$class = ($cliente->activado) ? "activado": ""}
    <tr class={$class}>
        <td>{$cliente->nombre_usuario}</td>
        <td>{$cliente->saldo_cliente}</td>

        {$estado = ($cliente->activado_cliente) ?  "cliente activado" : "cliente desactivado"}
                <td>{$estado}</td>
                <td>
                    <a href='deleteClient/{$cliente->id_cliente}' class=' btn btn-danger'>Eliminar</a>
                    <a href='showEditClient/{$cliente->id_cliente}' class='btn btn-warning'>Editar</a>
                </td>
                <td>{$cliente->nombre}</td>
            
        </tr>
        {/foreach}

        {include 'htmlEnd.tpl'}
