<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('user_mdl','mdl');
		$this->load->model('unit_mdl','munit');
		$this->load->helper('form');
	}
	
	function index(){		
		$data['title']="Agenda Menteri";
		$this->load->view('header');
		$this->load->view('perkantoran',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Agenda Menteri";
		if ($tabs==2){
			redirect(base_url()."index.php/perkantoran#tabs-perk2");
		} else {
			redirect(base_url()."index.php/perkantoran#tabs-perk3");
		}
	}
	
	function grid(){
		$rs = $this->mdl->getAll();
		echo json_encode($rs);
	}
	
	function form(){
		$data['menutitle']="Users";
		$data['NmMenu'] = "Form Users";
		
		$data['rs'] = $this->munit->getAll();
		$this->load->view('header_admin',$data);
		$this->load->view('user_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('user_fmj',$data);		
		$this->load->view('footer');
	}
	
	function getform($aksi){
		$form_data = $this->input->post();
		
		$username = $form_data['username'];  	
		$username0 = $form_data['username0'];  
		$nama_lengkap = $form_data['nama_lengkap'];  
		$password = $form_data['password']; 
		$group = $form_data['group']; 
		$unit_kerja = $form_data['unit_kerja']; 
		
		// perlu dibuat sebarang pengacak
		$pengacak  = "K1234I4321K5678I8765N5891";
		
		// mengenkripsi password dengan md5() dan pengacak
		$password = md5(md5($password) . $pengacak .  md5($pengacak) . $password);

		

		$data = array(  
			'username' => $username,  
			'nama_lengkap' => $nama_lengkap,  
			'password' => $password,
			'group' => $group,
			'unit_kerja' => $unit_kerja
			);
		if ($aksi=="tambah"){	
			$this->tambah($data);	
		} else {
			$this->ubah($data,$username0);
		}
	}
	
	function tambah($data){			
		$success = $this->mdl->tambah($data);	
		
		if ($success){				
			$bol=true;
			$msg="Tambah user berhasil.";
		} else {
			$bol=false;
			$msg="Tambah user gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function ubah($data,$username0){			
		$success = $this->mdl->ubah($data,$username0);	
		
		if ($success){				
			$bol=true;
			$msg="Ubah user berhasil.";
		} else {
			$bol=false;
			$msg="Ubah user gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function hapus(){
		$username=$_REQUEST['username'];
		$sucess = $this->mdl->hapus($username);
		
		/*if ($success){				
			$bol=true;
			$msg="Hapus data berhasil.".$username;
		} else {
			$bol=false;
			$msg="Hapus data GAGAL.".$username;
		}*/
		$msg="Hapus data berhasil.";
		echo json_encode(array('success'=>true,'msg'=>$msg)); 
	}
	
	
	
}