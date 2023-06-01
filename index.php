<?php
    require 'config.php';
	$db = new Database();
    $db->connect();
    session_start();
    if (isset($_GET['controller'])) {
		require '../../Route/admin/web.php';
        /*xử lý các request trong Route/web.php*/
	} else {
        require 'Views/client/layouts/header.php';
        require 'Views/client/layouts/body.php';
        require 'Views/client/layouts/footer.php'; /*require giao diện trang chủ*/
	}
   

    $db->closeDatabase();

?>

