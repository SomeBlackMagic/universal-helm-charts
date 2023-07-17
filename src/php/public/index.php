<?php

require '../vendor/autoload.php';

$dotenv = new \Symfony\Component\Dotenv\Dotenv();
$dotenv->usePutenv()->loadEnv(dirname(__DIR__).'/.env');
if(file_exists(dirname(__DIR__).'/.env.local')) {
    $dotenv->overload(dirname(__DIR__).'/.env.local');
}

echo  '<link rel="stylesheet" href="assets/bootstrap.min.css">';

echo 'Welcome page';


phpinfo();
