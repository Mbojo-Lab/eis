<?php
class Kepegawaian_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->dbsdm = $this->load->database('sdm', true);
    }
    
    function getJmlBagian(){
		$q = "SELECT bagian, SUM(jumlah) AS jml 
			  FROM karyawan
			  GROUP BY bagian 
			  ORDER BY bagian ASC";
		$rs = $this->dbsdm->query($q)->result();
		
		return $rs;
    }
	
	function getJmlEselon(){
		$q = "SELECT eselon,SUM(jumlah) AS jml
			  FROM karyawan 
			  GROUP BY eselon
			  ORDER BY eselon ASC";
		$rs = $this->dbsdm->query($q)->result();
		$rs0 = $this->dbsdm->query($q);
		$html = '<table id="datatable" style="display:none"><thead><tr><th></th><th>Jumlah</th></tr></thead><tbody>';
		
		foreach ($rs as $r){
			$html .= '<tr><th>'.$r->eselon.'</th>';
			$html .= '<td>'.$r->jml.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
    }
}
?>