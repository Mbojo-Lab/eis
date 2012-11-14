<?php
class Agenda_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->dbperp = $this->load->database('perpus', true);
    }
    
    function getKoleksi(){
		$rs = array( 
			'Makalah' => $this->dbperp->count_all_results('makalah'),
			'Karya Ilmiah' => $this->dbperp->count_all_results('karya_ilmiah'),
			'Jurnal' => $this->dbperp->count_all_results('jurnal'),
			'Buku' => $this->dbperp->count_all_results('buku'),
			'Prosiding' => $this->dbperp->count_all_results('prosiding')
			);
		return $rs;
    }
	
	function getKoleksiMasuk(){
		$html = '<table id="datatable" style="display:none"><thead><tr>
		<th></th>
		<th>Makalah</th>
		<th>Karya Ilmiah</th>
		<th>Jurnal</th>
		<th>Buku</th>
		<th>Prosiding</th>';		
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
		$q = "SELECT DATE_FORMAT(tanggal,'%Y') AS tahun, COUNT(*) AS jml
			  FROM kunjungan
			  GROUP BY DATE_FORMAT(tanggal,'%Y') ASC
			  ORDER BY DATE_FORMAT(tanggal,'%Y') ASC";
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