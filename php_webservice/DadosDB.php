<?php
/*
 * Classe para conectar no banco de dados e retornar o resultado de uma consulta SQL
 * Andeson de Jesus de Menezes
 * 01/04/2017
 *
 * Exemplo PHP + MySQL + Json + Android
 * */

class DadosDB{

    private $Host = "mysql.hostinger.com.br";
    private $Usuario = "usuario";
    private $Senha = "android";
    private $Database = "database";
    private $ConDB = "";
	
	public $lista = array();

    function DadosDB($tabela, $filtro){
        $this->ConDB = mysqli_connect($this->Host,$this->Usuario, $this->Senha, $this->Database);
        mysqli_set_charset($this->ConDB, "utf8");

        $SQL = 'SELECT * FROM '.$tabela.' '.$filtro;

        $query = mysqli_query($this->ConDB, $SQL);
			
        while ( $resultado = mysqli_fetch_array( $query, MYSQL_ASSOC ) ) {
               $this->lista[] = $resultado;
        }
		mysqli_close($this->ConDB);      
    }


}

?>