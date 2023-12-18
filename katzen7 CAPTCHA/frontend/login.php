<?php
session_start();

// Eliminar la variable de sesión 'id' si existe
unset($_SESSION['id']);

include_once '../backend/php/login.php';
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KatzenTech</title>
  <link rel="icon" type="image/png" href="../backend/img/logo.png">
  <link rel="stylesheet" type="text/css" href="../backend/css/style.css">
  <style type="text/css">
    /* Estilos CSS como en tu código anterior */
  </style>
</head>
<body>
<div class="loader-container">
  <div class="load_animation">
    <ion-icon name="bag-handle-outline" class="animation"></ion-icon>
  </div>
</div>
<div class="wrapper">
  <div class="loader"></div>
</div>

<div class="split-sceen">
  <div class="left">
    <section class="copy">
      <h1>KatzenTech</h1>
      <p>Tu sistema de inventario </p>
    </section>
  </div>

  <div class="right">
    <form method="POST" role="form" onsubmit="return validacion()">
      <section class="copy">
        <h2>Iniciar sesión</h2>
        <?php
        if (isset($errMsg)) {
          echo '
    <div style="color:#FF0000;text-align:center;font-size:20px; font-weight:bold;">' . $errMsg . '</div>
    ';
        }
        ?>
      </section>
      <div class="input-container name">
        <label for="fname">Nombre de usuario</label>
        <input type="text" id="usuario" name="username" value="<?php if (isset($_POST['username'])) echo $_POST['username'] ?>" autocomplete="off" autocomplete="off">
      </div>

      <div class="input-container password">
        <label for="password">Contraseña</label>
        <input type="password" id="contra" name="password" placeholder="Mínimo de 6 carácteres">
        <i class="far fa-eye-slash"></i>
      </div>

      <div class="input-container cta">
        <label class="checkbox-container">
          <input type="checkbox">
          <span class="checkmark"></span>
          Mantener la sesión
        </label>

        <div class="input-container password">
          <!-- Verificar el reCAPTCHA solo si se han ingresado usuario y contraseña -->
          <div id="captcha" class="g-recaptcha" data-sitekey="6LepgzQpAAAAAIyHoKmgDar-vnRqWhWfJfwzTLgg" data-callback="enableSubmitButton" data-expired-callback="resetSubmitButton"></div>
        </div>

        <button name='login' class="signup-btn" type="submit" id="submitButton" disabled>Entrar</button>

        <section class="copy legal">
          <p><span class="small">Al continuar, aceptas nuestra <br><a href="#">Política de Privacidad </a>&amp; <a href="#">Términos de Servicio</a>.</span></p>
        </section>
    </form>
  </div>
</div>

<script type="text/javascript" src="../backend/js/script.js"></script>
<script type="text/javascript" src="../backend/js/validate.js"></script>
<script type="text/javascript" src="../backend/js/reenvio.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
<script type="text/javascript">
  $(window).on("load", function () {
    $(".load_animation").fadeOut(1000);
  });

  function enableSubmitButton(response) {
    // Verifica si se completaron los campos de usuario y contraseña
    var usuario = document.getElementById("usuario").value;
    var contra = document.getElementById("contra").value;
    var submitButton = document.getElementById("submitButton");

    if (usuario !== "" && contra !== "") {
      submitButton.disabled = false;
    } else {
      submitButton.disabled = true;
      resetSubmitButton();
    }
  }

  function resetSubmitButton() {
    grecaptcha.reset(); // Reinicia el reCAPTCHA si los campos no están llenos
  }
</script>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
