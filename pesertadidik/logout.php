<?php 
session_start();
session_destroy();
echo "<script>alert('Logout Succes');document.location.href='../'</script>";
?>