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
}
?>