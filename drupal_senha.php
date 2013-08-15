<?php
define('DRUPAL_ROOT', getcwd());
require_once DRUPAL_ROOT . '/includes/bootstrap.inc';
drupal_bootstrap(DRUPAL_BOOTSTRAP_FULL);
require_once DRUPAL_ROOT . '/includes/password.inc';
if (isset($_GET['pass']) && !empty($_GET['pass'])) {
  $newhash =  user_hash_password($_GET['pass']);

//Troque na URL PASSWORD pela senha desejada
}
else {
  die('Tente novamente com ?pass=PASSWORD no final da url');
}

$updatepass = db_update('users') 
  ->fields(array(
    'pass' => $newhash,

//Descomente as linhas a seguir para alterar o usuario ou email administrativo   
//   'name' => 'admin',
//    'mail' => 'yourmail@example.com'
  ))
  ->condition('uid', '1', '=')
  ->execute();
print "Feito. Delete este arquivo imediatamente!";
drupal_exit();
?>