<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="<?= BOOTSTRAP_CSS?>bootstrap.min.css" rel="stylesheet">
        <link href="<?= BOOTSTRAP_CSS?>signin.css" rel="stylesheet">


        <title>Esteban</title>
    </head>
    <body>
    <div class="container">
                

      <form class="form-signin" name="login_formulario" action=""  method="post">
        <h2 class="form-signin-heading">Aserradero Esteban</h2>
        <input type="text" class="form-control" placeholder="usuario" name="user" autofocus>
        <input type="password" name="password" class="form-control" placeholder="contraseña">
        <label class="checkbox">
          <input type="checkbox" value="remember-me">Recordarme
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Aceptar</button>
      </form>

    </div> <!-- /container -->
    </body>
</html>
