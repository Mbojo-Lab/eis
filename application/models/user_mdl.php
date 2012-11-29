<?php
class User_mdl extends CI_Model
{ 
    function __construct(){
        parent::__construct();
		$this->table = 'pengguna';
    }
 
    function getAll(){
		$q = "SELECT *, username AS username0
			  FROM pengguna
			  ORDER BY username";
		$rs = $this->db->query($q)->result();
		
		return $rs;
	}
	
	function tambah($data){
		$run = $this->db->insert($this->table, $data); 
		
		return $run;
	}
	
	function ubah($data,$id){
		$run = $this->db->update($this->table, $data, array('username' => $id)); 
		
		return $run;
	}
	
	function hapus($id){
		$this->db->delete($this->table, array('username' => $id)); 
	}
	
}
?>