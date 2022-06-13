<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-edit"></i> Tambah Data</h3>
	</div>
	<form action="" method="post" enctype="multipart/form-data">
		<div class="card-body">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">NIP</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="nip" name="nip" placeholder="NIP" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Pegawai</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Pegawai" required>
				</div>
			</div>
<!-- start -->
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Tempat/Tanggal Lahir</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="tempat" name="tempat" placeholder="Tempat/Tanggal Lahir" required>
					
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jenis Kelamin</label>
				<div class="col-sm-5">

					<select class="form-control" name="gender" required>
						<option value="Laki-laki">Laki-laki</option>
						<option value="Perempuan">Perempuan</option>
					</select>
					
				</div>
			</div>

		 <div class="form-group row">
				<label class="col-sm-2 col-form-label">Agama</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="nama" name="agama" placeholder="Agama" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">E-mail</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="nama" name="email" placeholder="E-mail" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Alamat</label>
				<div class="col-sm-10">
					<textarea class="form-control" name="alamat" placeholder="Alamat"></textarea>
					<!-- <input type="text" class="form-control" id="alamat" name="alamat" placeholder="Alamat" required> -->
				</div>
			</div>


			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Golongan Darah</label>
				<div class="col-sm-5">

					<div class="row">
                  <div class="col-2">
                     <div class="form-check">
                          <input class="form-check-input" type="radio" name="gol_darah" value="A">
                          <label class="form-check-label">A</label>
                        </div>
                  </div>
                  <div class="col-2">
                   <div class="form-check">
                          <input class="form-check-input" type="radio" name="gol_darah" value="B">
                          <label class="form-check-label">B</label>
                        </div>
                  </div>
                  <div class="col-2">
                     <div class="form-check">
                          <input class="form-check-input" type="radio" name="gol_darah" value="AB">
                          <label class="form-check-label">AB</label>
                        </div>
                  </div>
                  <div class="col-2">
                     <div class="form-check">
                          <input class="form-check-input" type="radio" name="gol_darah" value="O">
                          <label class="form-check-label">O</label>
                        </div>
                  </div>
                </div>
				</div>
			</div>

<!-- end -->
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">No Handphone</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="no_hp" name="no_hp" placeholder="No Handphone" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Status</label>
				<div class="col-sm-5">
					<select name="status" id="status" class="form-control">
						<option>- Pilih -</option>
						<option>Pegawai</option>
						<option>Honorer</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jabatan</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="jabatan" name="jabatan" placeholder="Jabatan" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Foto Pegawai</label>
				<div class="col-sm-6">
					<input type="file" id="foto" name="foto">
					<p class="help-block">
						<font color="red">"Format file Jpg/Png"</font>
					</p>
				</div>
			</div>

		</div>
		<div class="card-footer">
			<input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
			<a href="?page=data-pegawai" title="Kembali" class="btn btn-secondary">Batal</a>
		</div>
	</form>
</div>

<?php
	$sumber = @$_FILES['foto']['tmp_name'];
	$target = 'foto/';
	$nama_file = @$_FILES['foto']['name'];
	$pindah = move_uploaded_file($sumber, $target.$nama_file);

    if (isset ($_POST['Simpan'])){

		if(!empty($sumber)){
        $sql_simpan = "INSERT INTO tb_pegawai (nip, 
        	nama,
        	tempat,
        	gender,
        	email, 
        	agama,
        	gol_darah,
        	alamat, 
        	no_hp, 
        	status, 
        	jabatan, 
        	foto) VALUES (
            '".$_POST['nip']."',
			'".$_POST['nama']."',
			'".$_POST['tempat']."',
			'".$_POST['gender']."',
			'".$_POST['email']."',
			'".$_POST['agama']."',
			'".$_POST['gol_darah']."',
			'".$_POST['alamat']."',
			'".$_POST['no_hp']."',
			'".$_POST['status']."',
			'".$_POST['jabatan']."',
            '".$nama_file."')";
        $query_simpan = mysqli_query($koneksi, $sql_simpan);
        mysqli_close($koneksi);

    if ($query_simpan) {
      echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=data-pegawai';
          }
      })</script>";
      }else{
      echo "<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=add-pegawai';
          }
      })</script>";
	}
	}elseif(empty($sumber)){
		echo "<script>
		Swal.fire({title: 'Gagal, Foto Wajib Diisi',text: '',icon: 'error',confirmButtonText: 'OK'
		}).then((result) => {
			if (result.value) {
				window.location = 'index.php?page=add-pegawai';
			}
		})</script>";
	}
	}
     //selesai proses simpan data
