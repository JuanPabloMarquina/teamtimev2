<?php

class Database {
    private $servername = "localhost";
    private $username = "realdeb";
    private $password = "12345678";
    private $dbname = "asistencia2";
    private $conn;

    // Método para realizar la conexión
    public function connect() {
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);

        if ($this->conn->connect_error) {
            die("Conexión fallida: " . $this->conn->connect_error);
        }

        return $this->conn;
    }

    // Método para cerrar la conexión
    public function close() {
        $this->conn->close();
    }
}

