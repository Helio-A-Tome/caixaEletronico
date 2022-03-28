<?php
session_start();
require 'config.php';

if(isset($_POST['tipo']) ){

         $tipo=$_POST['tipo'];
             $valor=str_replace("," , "." , $_POST['valor']);
                $valor = floatval($valor);
        
        $sql = $pdo->prepare("INSERT INTO historico (id_conta,tipo,valor,data_operacao) 
        VALUES (:id_conta, :tipo, :valor, NOW())");
        $sql->bindValue(":id_conta",$_SESSION['banco']);
        $sql->bindValue(":tipo", $tipo);
        $sql->bindValue(":valor",$valor);
        $sql->execute();
       
        
        //verificar se o saldo modificou
      
       if($tipo =='0'){
        //Deposito
            $sql = $pdo->prepare("UPDATE contas  SET saldo = saldo + :valor WHERE id = :id");
             $sql->bindValue(":valor",$valor);
                 $sql->bindValue(":id",$_SESSION['banco']);
                     $sql->execute();
        }else{
        //saque
         $sql =$pdo->prepare("UPDATE contas  set saldo = saldo - :valor where id = :id");
             $sql->bindValue(":valor",$valor);
                 $sql->bindValue(":id",$_SESSION['banco']);
                     $sql->execute();
        
        
        }
        
             header("location:index.php");
        exit;
        

}
?>
<!DOCTYPE HTML>
 <form  method="post">
    <h1>logar</h1>
  <!--<label for="">Nome:</label>  <input type="text" name="nome" id=""><br><br>-->
   
       <label for="">
       Tipo de Operação:
       </label> <select name="tipo" id="">
       <option></option>
        <option value="0">Deposito</option>
         <option value="1">Retirada</option>
       </select><br><br>
       <label for="">Valor:</label>  <input type="text" name="valor" pattern="[0-9.,]{1,}" id=""><br><br>
      <input type="submit" value="enviar">
    
    </form>