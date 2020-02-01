<?php 
session_start();

// cek apakah yang mengakses halaman ini sudah login
	if($_SESSION['level']==""){
    header("location:index.php?pesan=gagal");
  }
require 'funcition.php';
//cek tombol submit sudah ditekan atau belum 
if(isset($_POST["submit"])){

	//cek apakah data berhasil di tambahkan atau tidak
	if (tambah($_POST) > 0) {
		echo "
		<script>
			alert('data berhasil ditambahkan!');
			document.location.href = 'halaman_admin.php';
		</script> 
		";
	} else {
		echo "
		<script>
			alert('data gagal ditambahkan!');
			document.location.href = 'halaman_admin.php';
		</script> 
		";
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="icon/hexagonos.jpg">
	<title>Ujian Test</title>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" >


</head>
<body>
<div class="container ">
	<div class="row justify-content-center">
		<div class="col col-6">
			<div class="card mt-5 mb-5">
				<div class="card-header bg-primary text-white">
					Tambah Data
				</div>
		
				<form action="" method="post" enctype="multipart/form-data">
					<div class="card-body">
					<div class="form-group ">
				    <label for="soal">Soal</label>
				    <textarea class="form-control" name="soal" id="soal" rows="5"></textarea>
				  </div>
				  <div class="form-group">
				    <label for="a">Masukan Jawaban</label>
				    <input type="text" class="form-control" name="a" id="a" placeholder="jawaban A">
				  </div>
				  <div class="form-group">
				    <label for="b">Masukan Jawaban</label>
				    <input type="text" class="form-control" name="b" id="b" placeholder="jawaban B">
				  </div>
				  <div class="form-group">
				    <label for="c">Masukan Jawaban</label>
				    <input type="text" class="form-control" name="c" id="c" placeholder="jawaban C">
				  </div>
				  <div class="form-group">
				    <label for="d">Masukan Jawaban</label>
				    <input type="text" class="form-control" name="d" id="d" placeholder="jawaban D">
				  </div>
				  <div class="form-group">
				    <label for="kunci">Kunci Jawaban</label>
				    <select class="form-control" id="kunci" name="kunci">
				      	<option value="a" >A</option>
						<option value="b" >B</option>
						<option value="c" >C</option>
						<option value="d" >D</option>
				    </select>
				  </div>
				  </div>
				  <div class="card-footer">
					  <a href="halaman_admin.php" class="btn btn-dark ">Back</a>
					  <button type="submit" name="submit" class="btn btn-primary">Confirm</button>
				  </div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/jquery-3.4.1.slim.min.js" ></script>
    <script src="assets/popper.min.js" ></script>
    <script src="assets/js/bootstrap.min.js" ></script>
</body>
</html>