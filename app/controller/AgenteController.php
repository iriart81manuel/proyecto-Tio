<?php
require_once "app/model/AgenteModel.php";
require_once "app/view/AgenteView.php";

class AgenteController{

    private $model;
    private $view;
    private $err;

    function __construct(){
        $this->model = new AgenteModel();
        $this->view = new AgenteView();
    }

    function mostrarAgentes(){
        if(authHelpers::checkLogged()){
            $agentes = $this->model->getAll();
            $this->view->mostrarAgentes($agentes);
        }else{
            // $this->err->showErr("No existe el pagente con id: $id");
        }
    }


    function delete($id){
        $this->model->delete($id);
        header("Location:".BASE_URL."agentes");
    }

    function showEditAgent($id_agente){
        $agente = $this->model->getAgent($id_agente);
        $this->view->showEditAgent($agente);
    }
    function editAgent($id_agente){

            if($_SERVER["REQUEST_METHOD"] == "POST"){
                if(!empty($_POST['nombre']) && !empty($_POST['saldo'])&& !empty($_POST['email'])&&
                isset($_POST['activado'])
                ){
                    $nombre = $_POST['nombre'];
                    $saldo = $_POST['saldo'];
                    $email = $_POST['email'];
                    $activado = $_POST['activado'];
                    $id_agente = $_POST['id_agente'];
                    $this->model->editAgent($nombre, $saldo, $email, $activado, $id_agente);
                    header("Location:".BASE_URL."agentes");             
    
                }else{
                    $this->err->showErr("Faltan datos");    
                }
            }
    }

    function newAgent(){
        if($_SERVER["REQUEST_METHOD"] == "POST"){
            if(!empty($_POST['nombre']) && !empty($_POST['email'])&&
            isset($_POST['saldo']) && $_POST['saldo'] !== ""
            ){
                $nombre = $_POST['nombre'];
                $saldo = $_POST['saldo'];
                $email = $_POST['email'];
                $activado = $_POST['activado'];

                $this->model->insertAgent($nombre, $saldo, $email, $activado);
                header("Location:".BASE_URL."agentes");             

             }
            // else{
            //     $this->err->showErr("Faltan datos");   
            // }
        }
    }
}