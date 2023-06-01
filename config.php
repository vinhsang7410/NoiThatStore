<?php

class Database
{
	public $conn = NULL;
    public $error;
	
	private $server = 'localhost';
	private $dbName = 'webmysqli';
	private $user = 'root';
	private $password = '';
        
        // Hàm kết nối CSDL
	public function connect()
	{
		$this->conn = new mysqli($this->server, $this->user, $this->password, $this->dbName);

		if ($this->conn->connect_error) {
			printf($this->conn->connect_error);
			exit();
		}
		$this->conn->set_charset("utf8");
	}
        // Hàm đóng kết nối CSDL
        public function closeDatabase()
	{
		if ($this->conn) {
			$this->conn->close();
		}
	}

	public static function Query($sql)       
	{
		$connection = mysqli_connect('localhost', 'root', '', 'webmysqli') or die("Không thể kết nối cơ sỡ dữ liệu!");

		mysqli_query($connection, "set names 'utf8'");
		
		$result = mysqli_query($connection, $sql);

		mysqli_close($connection);

		return $result;
	}
	public function select($sql)
    {
        $result = $this->conn->query($sql) or 
        die($this->conn->error.__LINE__);
        if($result->num_rows > 0){
            return $result;
        } else {
            return false;
        }
    }
	public function insert($sql)
	{
		$insert_row = $this->conn->query($sql) or 
			die($this->conn->error.__LINE__);
		if($insert_row){
			return $insert_row;
		} else {
			return false;
		}
	}
	public function update($sql)
    {
        $update_row = $this->conn->query($sql) or 
            die($this->conn->error.__LINE__);
        if($update_row){
        return $update_row;
        } else {
            return false;
        }
    }
	
}
?>
<?php

$mysqli = new mysqli("localhost","root","","webmysqli");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Lỗi kết nối đến mysqli" . $mysqli -> connect_error;
  exit();
}

?>