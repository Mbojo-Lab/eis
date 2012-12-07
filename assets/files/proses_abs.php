<?php
// menggunakan class phpExcelReader
require_once "excel_reader2.php";
// koneksi ke mysql
require_once "pdocon.php";
 
function dmys2ymd($date){
	if ($date!=""){
		list($day, $month, $year) = explode('/', $date);		
		return $year."-".str_pad($month, 2, "0", STR_PAD_LEFT)."-".str_pad($day, 2, "0", STR_PAD_LEFT);
	} else {
		return "0000-00-00";
	}
}
// membaca form
$tgl=dmys2ymd($_REQUEST['tgl']);

$q1 = "DELETE FROM absen WHERE 	
		tgl='$tgl' ";
$hasil1 = $pdo->query($q1);		

// membaca file excel yang diupload
$data = new Spreadsheet_Excel_Reader($_FILES['datax']['tmp_name']);
?>
<html>
<body> 
<?php 
// membaca jumlah baris dari data excel
$baris = $data->rowcount($sheet_index=0);
 
// nilai awal counter untuk jumlah data yang sukses dan yang gagal diimport
$sukses = 0;
$gagal = 0;

// import data excel mulai baris ke-2 (karena baris pertama adalah nama kolom)
for ($i=2; $i<=$baris; $i++){
// membaca data Jabatan (kolom B)
$jabatan = $data->val($i, 2);
// membaca data Tanggal (kolom C)
//$tgl = $data->val($i, 3);
// membaca data Hadir (kolom C)
$hadir = $data->val($i, 3);
// membaca data Hadir (kolom D)
$tidak_hadir = $data->val($i, 4);
// membaca data Hadir (kolom E)
$terlambat = $data->val($i, 5);


// setelah data dibaca, sisipkan ke dalam tabel header

$q2 = "INSERT INTO absen VALUES ('$jabatan','$tgl','$hadir','$tidak_hadir','$terlambat') ";

//echo $i.". ".$q."<br>";
$hasil2 = $pdo->query($q2);
// jika proses insert data sukses, maka counter $sukses bertambah
// jika gagal, maka counter $gagal yang bertambah
if ($hasil2) $sukses++;
else $gagal++;	

}
?>
<!--<div id="w" class="easyui-window"  collapsible="false" minimizable="false" maximizable="false" title="RESULT" style="width:400px;height:150px; padding:10px;"> -->
<?php 
// tampilan status sukses dan gagal
/*echo "<h3>Proses import data selesai.</h3>";
echo "<p>Jumlah data yang sukses diimport : ".$sukses."<br>";
echo "Jumlah data yang gagal diimport : ".$gagal."</p>";*/
?>
<script type="text/javascript">
 window.open('../../kepegawaian/upload/<?=$sukses?>/<?=$gagal?>','_self');
</script>
<!--</div>-->
</body>
</html>