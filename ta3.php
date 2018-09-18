<?php
  $host ="localhost"; 
  $user ="root"; 
  $pass =""; 
  $db ="test"; 
  $conn = mysqli_connect($host, $user, $pass, $db) 
  or die ("Gagal Koneksi");
    try {
    $pdo = new PDO("mysql:host={$host}; dbname={$db};", $user, $pass);
    $pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  } catch (PDOException $e) {
    print "Koneksi bermasalah : " . $e -> getMessage() . "<br>";
    die();
  }

  $namauser   = $_POST['namauser'];
  $nim      = $_POST['nim'];
  $fakultas   = $_POST['fakultas'];
  $jeniskelamin = $_POST['jeniskelamin'];
      $nama_foto = $_FILES['foto']['name'];
        $tmp_foto = $_FILES['foto']['tmp_name'];
        $dir_foto = "poto/";
        $target_foto = $dir_foto . $nama_foto;
        if (!move_uploaded_file($tmp_foto, $target_foto))
            die("Foto gagal di upload");
        $query = $pdo -> prepare("INSERT INTO dataform_ta VALUES ('$nim','$namauser','$fakultas','$jeniskelamin','$target_foto')");
        $query -> execute();
        if ($query)
            header("Location: ta3.html");
        else
            die("Add data Gagal");
?>