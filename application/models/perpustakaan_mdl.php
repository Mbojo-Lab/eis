<?php
class Perpustakaan_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->dbperp = $this->load->database('perpus', true);
    }
    
    function getKoleksi(){
		$q = "SELECT kategori, COUNT(*) AS jml 
			  FROM koleksi
			  GROUP BY kategori 
			  ORDER BY kategori ASC";
		$rs = $this->dbperp->query($q)->result();
		
		return $rs;
    }
	
	function getKoleksiMasuk(){
		$q = "SELECT DISTINCT kategori
			  FROM koleksi 
			  ORDER BY kategori ";
		$rs = $this->dbperp->query($q)->result();
		$rs0 = $this->dbperp->query($q);
		$html = '<table id="datatable" style="display:none"><thead><tr><th></th>';
		
		foreach ($rs as $r){
			$html .= '<th>'.$r->kategori.'</th>';
		}
		
		$html .= '</tr></thead><tbody>';
		
		$q = "SELECT DATE_FORMAT(tgl_masuk,'%Y') AS tahun 
			  FROM koleksi GROUP BY DATE_FORMAT(tgl_masuk,'%Y') ";
		$rs2 = $this->dbperp->query($q)->result();
		
		foreach ($rs2 as $r2){
			$html .= '<tr><th>'.$r2->tahun.'</th>';
			
			for ($i=0; $i<$rs0->num_rows(); $i++){
				$q = "SELECT COUNT(*) AS jml  
					  FROM koleksi WHERE DATE_FORMAT(tgl_masuk,'%Y')='".$r2->tahun."' 
					  AND kategori='".$rs[$i]->kategori."' ";
				$rs3 = $this->dbperp->query($q)->result();
				$html .= '<td>'.$rs3[0]->jml.'</td>';								
			}
			$html .= '</tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
    }
	
	function getKunjungan(){
		$q = "SELECT DATE_FORMAT(tgl,'%Y') AS tahun, COUNT(*) AS jml
			  FROM bukutamu
			  GROUP BY DATE_FORMAT(tgl,'%Y') ASC
			  ORDER BY DATE_FORMAT(tgl,'%Y') ASC";
		$rs = $this->dbperp->query($q)->result();		
		$categoryArr=array();
		$jmlArr=array();
		foreach ($rs as $r){
			$categoryArr[]=$r->tahun;
			$jmlArr[]=$r->jml;
		}
		$kunjungan['categories'] = implode(",", $categoryArr);
		$kunjungan['jml'] = implode(",", $jmlArr);
		
		return $kunjungan;
    }
}
?>