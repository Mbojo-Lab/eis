<?php
class Unit_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
    }
    
    function getAll(){
		//$q = $this->db->get('agenda')->result();
		
		$this->db->select('unit_kerja, keterangan')->from('unit_kerja')->order_by('unit_kerja','ASC');
		
		$q = $this->db->get()->result();
		return $q;
	}
	
	function tambah($data){
		$run = $this->db->insert('unit_kerja', $data); 
		
		return $run;
	}
	
	function ubah($data,$unit_kerja){
		$run = $this->db->update('unit_kerja', $data, array('unit_kerja' => $unit_kerja)); 
		
		return $run;
	}
	
	function hapus($unit_kerja){
		$run = $this->db->delete('unit_kerja', array('unit_kerja' => $unit_kerja)); 
		return $run;
	}
	
}
?>