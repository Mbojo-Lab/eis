<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perkantoran extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('agenda_mdl');
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
		$rs = $this->agenda_mdl->getAll();
		echo json_encode($rs);
	}
	
	function form(){
		$data['menutitle']="Agenda Menteri";
		$data['NmMenu'] = "Form Schedule";
		
		$this->load->view('header_admin',$data);
		$this->load->view('schedule_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('schedule_fmj',$data);		
		$this->load->view('footer');
	}
	
	function getform($aksi){
		$form_data = $this->input->post();
		
		$datetime = $form_data['date'];  
		list($tgl, $jam) = explode(' ', $datetime);
		list($d, $m, $y) = explode('/', $tgl);
		list($h, $mt, $s) = explode(':', $jam);
		
		$date = (mktime($h, $mt, $s, $m, $d, $y)*1000)-(3600*6*1000);
		
		$date0 = $form_data['date0'];  
		$title = $form_data['title'];  
		$description = $form_data['description']; 

		$data = array(  
			'date' => $date,  
			'title' => $title,  
			'description' => $description
			);
		if ($aksi=="tambah"){	
			$this->tambah($data);	
		} else {
			$this->ubah($data,$date0);
		}
	}
	
	function tambah($data){			
		$success = $this->agenda_mdl->tambah($data);	
		
		if ($success){				
			$bol=true;
			$msg="Tambah agenda berhasil.";
		} else {
			$bol=false;
			$msg="Tambah agenda gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function ubah($data,$date0){			
		$success = $this->agenda_mdl->ubah($data,$date0);	
		
		if ($success){				
			$bol=true;
			$msg="Ubah agenda berhasil.";
		} else {
			$bol=false;
			$msg="Ubah agenda gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function hapus(){
		$date=$_REQUEST['date'];
		$sucess = $this->agenda_mdl->hapus($date);
		
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
