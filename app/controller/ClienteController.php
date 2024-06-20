<?php
require_once "app/model/ClienteModel.php";
require_once "app/model/AgenteModel.php";
require_once "app/view/ClienteView.php";

class ClienteController
{

    private $model;
    private $modelAgente;
    private $view;
    private $err;

    function __construct()
    {
        $this->model = new ClienteModel();
        $this->modelAgente = new AgenteModel();
        $this->view = new ClienteView();
    }

    function showAllClients($id = null)
    {
        if (authHelpers::checkLogged()) {
            $agentes = $this->modelAgente->getAll();
            $clientes = $this->model->getAllCliete_y_Agente();

            $this->view->showAllClients($clientes, $agentes);
        } else {
            // $this->err->showErr("No existe el agente con id: $id");
        }
    }

    function showClients($id = null)
    {
        if (authHelpers::checkLogged()) {
            $clientes = $this->model->getClients($id);
            $this->view->showClients($clientes);
        } else {
            // $this->err->showErr("No existe el agente con id: $id");
        }
    }

    function showEditClient($id)
    {
        $cliente = $this->model->getClient($id);
        $this->view->showEditClient($cliente);
    }

    function editClient($id_cliente){
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (!empty($_POST['nombre_usuario']) && !empty($_POST['saldo_cliente']) && isset($_POST['activado_cliente'])) {
                $nombre_usuario = $_POST['nombre_usuario'];
                $saldo_cliente = $_POST['saldo_cliente'];
                $activado_cliente = $_POST['activado_cliente'];
                $id_cliente = $_POST['id_cliente'];
                $this->model->editClient($nombre_usuario, $saldo_cliente, $activado_cliente, $id_cliente);
                header("Location:" . BASE_URL . "clientes");
            } else {
                echo '("Faltan datos")';
            }
        }
    }

    function delete($id){
        $this->model->delete($id);
        header("Location:" . BASE_URL . "clientes");
    }

    function newClient()
    {
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (
                !empty($_POST['nombre']) &&
                isset($_POST['saldo']) && $_POST['saldo'] !== ""
            ) {
                $nombre = $_POST['nombre'];
                $saldo = $_POST['saldo'];
                $activado_cliente = $_POST['activado_cliente'];
                $id_agente = $_POST['id_agente'];

                $this->model->insertClient($nombre, $saldo, $activado_cliente, $id_agente);
                header("Location:" . BASE_URL . "clientes");
            }
        }
    }
}