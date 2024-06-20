<form class="col-3 m-auto" action="crearAgente" method="POST">
 <div class="formulario">
    
      <legend class="text-center">Crear Agente</legend>
      <div class="mb-3">
        <label class="form-label">Nombre de Agente</label>
        <input type="text" name="nombre" class="form-control" placeholder="Ingrese nombre" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Saldo</label>
        <input type="double" name="saldo" class="form-control" placeholder="Ingrese saldo" required>
      </div>
      <div class="mb-3">
      <label class="form-label">Email</label>
      <input type="text" name="email" class="form-control" placeholder="Ingrese su Email" required>
    </div>
      <div class="mb-3">
        <label class="form-label">Estado de agente</label >
        <select name="activado" class="form-select">
          <option class="options" value="0">Desactivado</option>
          <option class="options" value="1">Activado</option>  
        </select>
      </div>
   </div>

      <button type="submit" class="btn btn-primary col-12">Crear Agente</button>
  </form>