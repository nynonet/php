<?php
require("DadosDB.php");

if (!isset($_GET["tabela"])) {
    $tab = "0";	
}else{
    $tab = $_GET['tabela'];
}

if (!isset($_GET["filtro"])) {
    $whe = "";
}else{
    $whe = " where id_fab = ".$_GET['filtro'];
}


if ($tab=="0") {
    $retorno = json_encode( array( 	"Status" => -1,
									"Mensagem" => "Sistema sem parâmetros") );
} else {
//	header("Content-type:application/json");
	$dados = new DadosDB($tab, $whe);
		
    if ($dados != null) {
        $retorno = json_encode( array("Dados" => $dados->lista,
            "Status" => 100,
            "Mensagem" => "Sucesso") );
    } else {
        $retorno = json_encode( array("Status" => 0,
            "Mensagem" => "Falha") );
    }   
}

echo $retorno;

?>