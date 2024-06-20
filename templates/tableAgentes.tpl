{include 'htmlStart.tpl'}

{include 'formAddAgentes.tpl'}

<table class="table table-success table-striped mt-2 text-center table table-dark">
    <thead>
        <tr>
            <th scope="col">Nombre</th>
            <th scope="col">Saldo</th>
            <th scope="col">Email</th>
            <th scope="col">Estado</th>
            <th scope="col">Acciones</th>
        </tr>
    </thead>
    <tbody>

        {if $agentes == 0}
            <tr>
                <td colspan=5>No hay agentes para mostrar</td>
            </tr>
        {/if}

    {foreach $agentes as $agente}
       
        <tr>
            <td>{$agente->nombre}</td>
            <td>{$agente->saldo}</td>
            <td>{$agente->email}</td>
            <td>{$agente->activado}</td>
            <td>
            <a href='mostrarClientes/{$agente->id_agente}' class='btn btn-primary'>Ver Clientes</a>
            <a href='showEditAgent/{$agente->id_agente}' class='btn btn-warning'>Editar</a>
            <a href='deleteAgent/{$agente->id_agente}' class='btn btn-danger'>Eliminar</a>
            </td>
            
        </tr>
        {/foreach}
    </tbody>

        {include 'htmlEnd.tpl'}
