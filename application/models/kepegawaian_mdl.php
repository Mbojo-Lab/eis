<?php
class Kepegawaian_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->load->database();
    }
	
	function getRekapUK(){
		$q = "SELECT *
			  FROM sdm_rekap_unit_stat
			  ORDER BY no";
		$rs = $this->db->query($q)->result();
		
		return $rs;
	}
	
	function getRekapJJK(){
		$q = "SELECT *
			  FROM sdm_rekap_jab_jk
			  ORDER BY no";
		$rs = $this->db->query($q)->result();
		
		return $rs;
	}
    
    function getJmlBagian(){
		$q = "SELECT no, unit_kerja, (jml_pns + jml_honor) AS jml 
			  FROM sdm_rekap_unit_stat
			  ORDER BY no";
		$rs = $this->db->query($q)->result();
		
		return $rs;
    }
	
	function getJmlEselon(){
		$q = "SELECT no,jabatan,(jml_pria + jml_wanita) AS jml
			  FROM sdm_rekap_jab_jk
			  ORDER BY no ASC";
		$rs = $this->db->query($q)->result();
		$rs0 = $this->db->query($q);
		$html = '<table id="datatable" style="display:none"><thead><tr><th></th><th>Jumlah</th></tr></thead><tbody>';
		
		foreach ($rs as $r){
			$html .= '<tr><th>'.$r->jabatan.'</th>';
			$html .= '<td>'.$r->jml.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
    }
	
	function getJmlTot(){
		$q = "SELECT SUM(jml_pria + jml_wanita) AS tot
			  FROM sdm_rekap_jab_jk";
		$rs = $this->db->query($q)->result_array();
		
		return $rs[0]['tot'];
    }
	
	function ubah($data){
		$this->db->where('no', $data['no']);
		$this->db->update('sdm_rekap_unit_stat', $data);
		
		
		/*$q = "UPDATE sdm_rekap_unit_stat SET
			  jml_pns='".$data['jml_pns']."', 
			  jml_honor='".$data['jml_honor']."'
			  WHERE no='".$data['no']."'";
		$rs = $this->db->query($q);
		
		return $q;*/
	}
	
	function ubah2($data){
		$this->db->where('no', $data['no']);
		$this->db->update('sdm_rekap_jab_jk', $data);
		
		
		/*$q = "UPDATE sdm_rekap_unit_stat SET
			  jml_pns='".$data['jml_pns']."', 
			  jml_honor='".$data['jml_honor']."'
			  WHERE no='".$data['no']."'";
		$rs = $this->db->query($q);
		
		return $q;*/
	}
}
?>