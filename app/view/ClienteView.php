<?php
require_once "view.php";


class ClienteView extends view
{

  function showAllClients($clientes, $agentes)
  {


    $this->smarty->assign("base", BASE_URL);
    $this->smarty->assign("clientes", $clientes);
    $this->smarty->assign("agentes", $agentes);

    $this->smarty->display('tableClientes.tpl');
  }

  function cambiarEstado($id_cliente)
  {
    $this->smarty->assign("base", BASE_URL);
    $this->smarty->assign("id", $id_cliente);

    $this->smarty->display();
  }

  function showClients($clientes)
  {
    $this->smarty->assign("base", BASE_URL);
    $this->smarty->assign("clientes", $clientes);
    $this->smarty->display('tableClients.tpl');
  }

  function showEditClient($cliente)
  {
    $this->smarty->assign("base", BASE_URL);
    $this->smarty->assign("cliente", $cliente);

    $this->smarty->display('formEditClient.tpl');
  }
}