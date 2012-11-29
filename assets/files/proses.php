<?php
// menggunakan class phpExcelReader
require_once "excel_reader2.php";
// koneksi ke mysql
require_once "pdocon.php";
 
 
// membaca form
$tahun=$_REQUEST['tahun'];
$bagian=$_REQUEST['bagian'];

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
// membaca data DokKdBc (kolom B)
$nama_keg = $data->val($i, 2);
// membaca data CAR (kolom C)
$jenis_keg = $data->val($i, 3);
// membaca data NoDaf (kolom D)
$anggaran = str_replace(",","",$data->val($i, 4));


// setelah data dibaca, sisipkan ke dalam tabel header
$q1 = "DELETE FROM kegiatan_mon WHERE 	
		nama_keg='$nama_keg' AND
		tahun='$tahun' AND 
		bagian='$bagian' ";

$q2 = "INSERT INTO kegiatan_mon VALUES ('$jenis_keg','$nama_keg','$anggaran','$bagian','$tahun') ";

//echo $i.". ".$q."<br>";
$hasil1 = $pdo->query($q1);
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
 window.open('../../monitoring/upload/<?=$sukses?>/<?=$gagal?>','_self');
</script>
<!--</div>-->
</body>
</html>