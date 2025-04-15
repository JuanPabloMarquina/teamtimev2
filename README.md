# 🕒 Sistema de Marcación de Asistencia

Este es un sistema de marcación de entrada y salida para empleados, desarrollado en PHP y MySQL. Permite registrar la asistencia diaria de los trabajadores mediante un código de 5 dígitos, y se maneja desde el teclado con las teclas `i` (ingreso) y `s` (salida).

---

## 🚀 Requisitos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- PHP >= 7.4
- MySQL o MariaDB
- Servidor web (Apache, Nginx o usar `php -S`)
- Extensión `intl` habilitada en PHP (para mostrar fechas en español)
- Composer (opcional, si usas dependencias externas)

---

## ⚙️ Instalación

1. **Clona o descarga el repositorio:**

```bash
git clone https://github.com/JuanPabloMarquina/teamtimev2.git
cd teamtimev2
```

2. **Crea la base de datos en MySQL:**

```bash
CREATE DATABASE asistencia2 CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```
3. **Importar la base de datos en MySQL**
4. **Configura la conexión a la base de datos:**
```bash
private $host = 'localhost'; //SERVIDOR
private $dbname = 'asistencia2'; //NOMBRE DE BASE DE DATOS
private $user = 'tu_usuario'; //USUARIO DE BASE DE DATOS
private $pass = 'tu_contraseña'; //CONTRASEÑA DE BASE DE DATOS
```
