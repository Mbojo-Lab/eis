<?php
class Perumahan_update_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
    }
    
    function getAll(){
		
		$this->db->select('tahun,nm_keg,lokasi,prog_rencana,prog_realisasi,nilai_rencana,nilai_realisasi,id')->from('realisasi')->order_by('id','ASC');
		
		$q = $this->db->get()->result();
		return $q;
	}

	
	function ubah($data,$id){
		$run = $this->db->update('realisasi', $data, array('id' => $id)); 
		
		return $run;
	}
	
}
?>