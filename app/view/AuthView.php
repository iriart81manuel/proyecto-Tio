<?php
require_once "view.php";

class AuthView extends view
{
  function showLogin($msj = null)
  {

    $this->smarty->assign("base", BASE_URL);
    $this->smarty->assign("msj", $msj);
    $this->smarty->display('login.tpl');

 

  }
}