<?php
class Agenda_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
    }
    
    function getAll(){
		//$q = $this->db->get('agenda')->result();
		
		$this->db->select('date,title,description,date AS date0')->from('agenda')->order_by('date','ASC');
		
		$q = $this->db->get()->result();
		return $q;
	}
	
	function tambah($data){
		$run = $this->db->insert('agenda', $data); 
		
		return $run;
	}
	
	function ubah($data,$id){
		$run = $this->db->update('agenda', $data, array('date' => $id)); 
		
		return $run;
	}
	
	function hapus($id){
		$run = $this->db->delete('agenda', array('date' => $id)); 
		return $run;
	}
	
}
?>