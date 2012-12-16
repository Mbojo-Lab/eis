<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Unit extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('unit_mdl');
		$this->load->helper('form');
	}
	
	function index(){		
		$data['title']="Unit Kerja";
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
		$rs = $this->unit_mdl->getAll();
		echo json_encode($rs);
	}
	
	function form(){
		$data['menutitle']="Master Unit Kerja";
		$data['NmMenu'] = "Form Master Unit Kerja";
		
		$this->load->view('header_admin',$data);
		$this->load->view('unit_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('unit_fmj',$data);		
		$this->load->view('footer');
	}
	
	function getform($aksi){
		$form_data = $this->input->post();
		
		$unit_kerja = $form_data['unit_kerja'];  
		$keterangan = $form_data['keterangan'];  
		

		$data = array(  
			'unit_kerja' => $unit_kerja,  
			'keterangan' => $keterangan
			);
		if ($aksi=="tambah"){	
			$this->tambah($data);	
		} else {
			$this->ubah($data,$unit_kerja);
		}
	}
	
	function tambah($data){			
		$success = $this->unit_mdl->tambah($data);	
		
		if ($success){				
			$bol=true;
			$msg="Tambah Unit Kerja berhasil.";
		} else {
			$bol=false;
			$msg="Tambah Unit Kerja gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function ubah($data,$unit_kerja){			
		$success = $this->unit_mdl->ubah($data,$unit_kerja);	
		
		if ($success){				
			$bol=true;
			$msg="Ubah data unit kerja berhasil.";
		} else {
			$bol=false;
			$msg="Ubah data unit kerja gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function hapus(){
		$unit_kerja=$_REQUEST['unit_kerja'];
		$sucess = $this->unit_mdl->hapus($unit_kerja);
		
		/*if ($success){				
			$bol=true;
			$msg="Hapus data berhasil.".$date;
		} else {
			$bol=false;
			$msg="Hapus data GAGAL.".$date;
		}*/
		$msg="Hapus data berhasil.";
		echo json_encode(array('success'=>true,'msg'=>$msg)); 
	}
	
	
}
