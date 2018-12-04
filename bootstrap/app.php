<?php
//ob_end_clean();
use Cart\App;
use Slim\Views\Twig;
use Illuminate\Database\Capsule\Manager as Capsule;


session_start();

require __DIR__.'/../vendor/autoload.php';

$app= new App();

$container = $app->getContainer();

$capsule = new Capsule;
$capsule -> addConnection([
    'driver'=> 'mysql',
    'host'=>'localhost',
    'database'=> 'cart',
    'username'=>'root',
    'password'=>'',
    'charset'=>'utf8',
    'collation'=>'utf8_unicode_ci',
    'prefix'=>''
]);

$capsule->setAsGlobal();
$capsule->bootEloquent();

Braintree_Configuration::environment('sandbox');
Braintree_Configuration::merchantId('7wn44j32b647bprn');
Braintree_Configuration::publicKey('hddfky5jjy9b68sy');
Braintree_Configuration::privateKey('c6f0fef60a3ac438899702a0dcf33d33');


//var_dump($_SESSION);
require __DIR__.'/../app/routes.php';

$app->add(new \Cart\Middleware\ValidationErrorsMiddleware($container->get(Twig::class)));
$app->add(new \Cart\Middleware\OldInputMiddleware($container->get(Twig::class)));
