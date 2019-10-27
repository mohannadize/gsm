<?php

class MySQLDatabase
{

    private $host = "localhost"; //the host
    private $db_user = "root";  //Your username
    private $pass = "";  // Your password
    private $dbase = "gsm"; // database name
    private $connection;

    function __construct()
    {
        $this->open_connection();
    }

    public function crud()
    {
        try {
            $DB_con = new PDO("mysql:host={$this->host};dbname={$this->dbase}", $this->db_user, $this->pass);
            $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo $e->getMessage();
        };
        return new crud($DB_con);
    }

    public function open_connection()
    {
        $this->connection = mysqli_connect($this->host, $this->db_user, $this->pass, $this->dbase);
        if (mysqli_connect_errno()) {
            die("Database connection failed: " .
                mysqli_connect_error() .
                " (" . mysqli_connect_errno() . ")");
        }
    }

    public function close_connection()
    {
        if (isset($this->connection)) {
            mysqli_close($this->connection);
            unset($this->connection);
        }
    }

    public function query($sql)
    {
        $result = mysqli_query($this->connection, $sql);
        $this->confirm_query($result);
        return $result;
    }

    public function add_user($name, $username, $password, $email, $admin = 0)
    {
        $settings = $this->query("SELECT daily_free,maintainance from `site`");
        $settings = $this->fetch_array($settings);
        if ($settings['maintainance']) return false;

        return $this->query("INSERT INTO users (name,username,password,email,daily_balance,admin) 
        VALUES
            ('$name','$username','$password','$email','$settings[daily_free]','$admin')
         ");
    }

    private function confirm_query($result)
    {
        if (!$result) {
            die(mysqli_error($this->connection));
        }
    }

    public function escape_value($string)
    {
        $escaped_string = mysqli_real_escape_string($this->connection, $string);
        return $escaped_string;
    }

    // "database neutral" functions

    public function fetch_array($result_set)
    {
        return mysqli_fetch_assoc($result_set);
    }

    public function num_rows($result_set)
    {
        return mysqli_num_rows($result_set);
    }

    public function insert_id()
    {
        // get the last id inserted over the current db connection
        return mysqli_insert_id($this->connection);
    }

    public function affected_rows()
    {
        return mysqli_affected_rows($this->connection);
    }
}

$database = new MySQLDatabase();
$db = &$database;
