<?php
class Account_model extends CI_Model
{ 
    function __construct(){
        parent::__construct();
		//$this->load->database();
    }
 
    function register($data){
        $this->db->insert($this->table, $data);
    }
 
    function login($username, $password){
      $q = "SELECT * FROM pengguna
			  WHERE username='$username' 
			  AND password='$password'";
 	  $rs = $this->db->query($q)->result();
        //dicek
        if ($rs){ 
			if (($rs[0]->username != $username) || ($rs[0]->password != $password)){
	            $this->session->set_flashdata('notification', 'Username dan Password tidak cocok');
	            return false;
			} else {
	            //data hasil seleksi dimasukkan ke dalam $session
	            $session = array(
	                'logged_in' => 1,
	                'id_user' => $rs[0]->id_user,
	                'group' => $rs[0]->group,
					'unit_kerja' => $rs[0]->unit_kerja,
	                'username' => $rs[0]->username,
	                'nama_lengkap' => $rs[0]->nama_lengkap,
	            );
	 
	            //data dari $session akhirnya dimasukkan ke dalam session (menggunakan library CI)
	            $this->session->set_userdata($session);
	            return true;
	        }	
        } else {
            $this->session->set_flashdata('notification', 'Username dan Password tidak cocok');
            return false;
        }
    }
 
    function logout(){
        $this->session->sess_destroy();
    }
}
?>