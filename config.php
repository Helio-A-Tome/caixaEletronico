<?php

$pdo = new PDO("mysql:dbname=projeto_caixa_eletronico; host=localhost","root","");
//echo "conectou";

try{
}catch(PDOException $e){
    echo "erro : ".$e->getMessage();

}