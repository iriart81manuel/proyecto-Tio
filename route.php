<?php
require_once "app/controller/AuthController.php";
require_once "app/controller/AgenteController.php";
require_once "app/controller/ClienteController.php";

// definimos la base url de forma dinamica
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');


if (empty($_GET['action'])) {
    $_GET['action'] = 'login';
}

$action = $_GET['action'];
$parametro = explode('/', $action);

//  print_r($parametro);
switch ($parametro[0]) {
    case 'agentes':
        $controller = new AgenteController();
        $controller->mostrarAgentes();
        break;

    case 'clientes':
        $controller = new ClienteController();
        $controller->showAllClients();
        break;
    case 'showAllClients':
        $controller = new ClienteController();
        $controller->showAllClients($parametro[1]);
        break;

    case 'mostrarClientes':
        $controller = new ClienteController();
        $controller->showClients($parametro[1]);
        break;
    case 'crearAgente':
        $controller = new AgenteController();
        $controller->newAgent();
        break;

    case 'crearCliente':
        $controller = new ClienteController();
        $controller->newClient();
        break;

    case 'showEditClient':
        $controller = new ClienteController();
        $controller->showEditClient($parametro[1]);

        break;

    case 'editClient':
        $controller = new ClienteController();
        $controller->editClient($parametro[1]);

        break;


    case 'deleteClient':
        $controller = new ClienteController();
        $controller->delete($parametro[1]);
        break;

    case 'deleteAgent':
        $controller = new AgenteController();
        $controller->delete($parametro[1]);
        break;

    case 'showEditAgent':
        $controller = new AgenteController();
        $controller->showEditAgent($parametro[1]);

        break;

    case 'editAgent':
        $controller = new AgenteController();
        $controller->editAgent($parametro[1]);

        break;

    case 'login':
        $controller = new AuthController();
        $controller->showLogin();
        break;

    case 'verify':
        $controller = new AuthController();
        $controller->verify();
        break;

    case 'logout':
        $controller = new authController();
        $controller->logout();
        break;

        //     // PARA EL MOMENTO DE REGISTRAR UN USUARIO UDS. DEBEN USAR ÉSTE ÚLTIMO
        //     echo password_hash($pass, PASSWORD_DEFAULT);


    default:
        //    TODO:: hacer algo
}
