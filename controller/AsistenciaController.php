<?php
// controller/AsistenciaController.php

class AsistenciaController {

    public function mostrarMarcacion($stylesheets = '')
{
    date_default_timezone_set('America/Lima');

    // ✅ Formateo moderno de fecha en español
    $formatter = new IntlDateFormatter(
        'es_PE', // Idioma regional
        IntlDateFormatter::FULL,
        IntlDateFormatter::NONE,
        'America/Lima',
        IntlDateFormatter::GREGORIAN,
        "EEEE, d 'de' MMMM 'de' yyyy"
    );

    $fecha = ucfirst($formatter->format(new DateTime()));
    $hora = date('H:i:s');

    require __DIR__ . '/../view/marcacion.php';
}

//funcion para registrar marcacion en bd mysql---
public function registrarMarcacion() {
    $token = $_POST['cod_usuario'] ?? '';
    $tipo = $_POST['tipo'] ?? ''; // 'entrada' o 'salida'
    $hora = $_POST['hora'] ?? '';
    $fecha = $_POST['fecha'] ?? '';

    //imprimiendo datos enviados desde la vista
    error_log("TOKEN " .$token);
    error_log("TIPO " .$tipo);
    error_log("FECHA " .$fecha);
    error_log("HORA " .$hora);

    if (!preg_match('/^\d{5}$/', $token) || !in_array($tipo, ['entrada', 'salida'])) {
        echo "Token inválido o tipo incorrecto.";
        return;
    }

    $db = new Database();
    $conn = $db->connect();

    // Buscar el ID del empleado según el token
    $stmt = $conn->prepare("SELECT id FROM empleados WHERE token_empleado = ?");
    $stmt->bind_param("s", $token);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if ($resultado->num_rows === 0) {
        echo "Empleado no encontrado.";
        return;
    }

    $row = $resultado->fetch_assoc();
    $id_empleado = $row['id'];


    // Verifica si ya hay marcación para hoy
    $check = $conn->prepare("SELECT * FROM registro_asistencia WHERE id_empleado = ? AND fecha = ?");
    $check->bind_param("is", $id_empleado, $fecha);
    $check->execute();
    $res = $check->get_result();

    if ($res->num_rows > 0) {
        // Ya existe: actualiza
        if ($tipo === 'entrada') {
            $update = $conn->prepare("UPDATE registro_asistencia SET hora_entrada = ? WHERE id_empleado = ? AND fecha = ?");
            $update->bind_param("sis", $hora, $id_empleado, $fecha);
        } else {
            $update = $conn->prepare("UPDATE registro_asistencia SET hora_salida = ? WHERE id_empleado = ? AND fecha = ?");
            $update->bind_param("sis", $hora, $id_empleado, $fecha);
        }
        $update->execute();
        echo ucfirst($tipo) . " registrada correctamente.";
    } else {
        // Insertar nueva marcación
        if ($tipo === 'entrada') {
            $insert = $conn->prepare("INSERT INTO registro_asistencia (id_empleado, fecha, hora_entrada) VALUES (?, ?, ?)");
            $insert->bind_param("iss", $id_empleado, $fecha, $hora);
        } else {
            $insert = $conn->prepare("INSERT INTO registro_asistencia (id_empleado, fecha, hora_salida) VALUES (?, ?, ?)");
            $insert->bind_param("iss", $id_empleado, $fecha, $hora);
        }
        $insert->execute();
        echo ucfirst($tipo) . " registrada correctamente.";
    }
    
}



}

