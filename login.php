<?php

    session_start();
        require 'config.php';
        
        if(isset($_POST['agencia']) && !empty($_POST['agencia']))
        //preparando os campos
{
       
        $agencia = addslashes($_POST['agencia']);
         $conta =addslashes($_POST['conta']);
        $senha = addslashes($_POST['senha']);
        
        $sql = $pdo->prepare("SELECT * FROM contas WHERE  agencia = :agencia AND conta= :conta 
        AND senha = :senha");
          
               $sql->bindValue(":agencia",$agencia);
                  $sql->bindValue(":conta",$conta);
                     $sql->bindValue(":senha",md5($senha));
                     $sql->execute();
                     
                     if($sql->rowCount()>0)
                     //verificar se houve algum retorno, se existe esta conta e esta agencia
                     {
                     $sql = $sql->fetch();
                     $_SESSION['banco'] = $sql['id'];
                     
                     header("location:index.php");
                     exit;
                     }
            

}
else
{}

?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Caixa Eletronico/login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    <form  method="post">
    <h1>logar</h1>
  <!--<label for="">Nome:</label>  <input type="text" name="nome" id=""><br><br>-->
    <label for="">Agencia:</label>  <input type="text" name="agencia" id=""><br><br>
       <label for="">Conta:</label> <input type="text" name="conta" id=""><br><br>
       <label for="">Senha:</label> <input type="password" name="senha" id=""><br><br>
        <input type="submit" value="logar">
    
    </form>
    
    </body>
</html>