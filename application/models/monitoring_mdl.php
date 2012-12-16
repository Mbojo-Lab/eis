<?php
class Monitoring_mdl extends CI_Model {

    var $table   = 'kegiatan_mon';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
    }
    
    function getAll($jenis_keg){
		//$q = $this->db->get('agenda')->result();
		
		$this->db->select()->from('kegiatan_mon')->where('jenis_keg',$jenis_keg)->order_by('nama_keg','ASC');
		
		$q = $this->db->get()->result();
		return $q;
	}
	
	function getJmlPagu(){
		$q = "SELECT tahun, (SELECT SUM(anggaran) FROM kegiatan_mon WHERE jenis_keg='Swakelola' AND tahun=km.tahun) AS jmls,
			 (SELECT SUM(anggaran) AS jmlk FROM kegiatan_mon WHERE jenis_keg='Kontraktual' AND tahun=km.tahun) AS jmlk
			  FROM kegiatan_mon km
			  GROUP BY tahun";
		$rs = $this->db->query($q)->result();
		$rs0 = $this->db->query($q);
		$html = '<table id="datatable_mon" style="display:none"><thead><tr><th></th><th>Swakelola</th><th>Kontraktual</th></tr></thead><tbody>';
		
		foreach ($rs as $r){
			$jmls=($r->jmls)?$r->jmls:0;
			$jmlk=($r->jmlk)?$r->jmlk:0;
			$html .= '<tr><th>'.$r->tahun.'</th>';
			$html .= '<td>'.$jmls.'</td>';
			$html .= '<td>'.$jmlk.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
    }
	
	function getJmlPagu2($tahun,$jenis){
		$q = "SELECT bagian, SUM(anggaran) AS jml
			  FROM kegiatan_mon km
			  WHERE tahun='$tahun' AND jenis_keg='$jenis'
			  GROUP BY bagian";
		$rs = $this->db->query($q)->result();
		$rs0 = $this->db->query($q);
		$html = '<table id="datatable" style="display:none"><thead><tr><th></th><th>Bagian</th></tr></thead><tbody>';
		
		foreach ($rs as $r){
			$jml=($r->jml)?$r->jml:0;
			$html .= '<tr><th>'.$r->bagian.'</th>';
			$html .= '<td>'.$jml.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
    }
	
	function getUnit(){
		$q = "SELECT * from unit_kerja";
		$rs = $this->db->query($q)->result();
		
		$html="";
		foreach ($rs as $r){
			
				$html .= "<option value=\"".$r->unit_kerja."\">".$r->keterangan."</option>";
			
		}
		return $html;
	}
	
}
?>