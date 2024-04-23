<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";

// Bagian User
if ($_GET[module]=='home'){
  include "sidebar.php";
  include "modul/mod_home/home.php";
}
elseif ($_GET[module]=='soal'){
  include "sidebar.php";
  include "modul/mod_soal/soal.php";
}
elseif ($_GET[module]=='hasiltes'){
  include "sidebar.php";	
  include "modul/mod_hasiltes/hasiltes.php";
}
elseif ($_GET[module]=='pengaturantes'){
  include "sidebar.php";	
  include "modul/mod_pengaturantes/pengaturantes.php";
}
elseif ($_GET[module]=='users') {
	include "sidebar.php";
	include "modul/mod_users/users.php";
}
elseif ($_GET[module]=='pengguna'){
  include "sidebar.php";
  include "modul/mod_pengguna/pengguna.php";
}
// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>
