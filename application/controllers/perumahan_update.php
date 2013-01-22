<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahan_update extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'index.php/member/login'); }
		
		$this->load->model('perumahan_update_mdl');
		$this->load->helper('form');
	}
	
	
	function grid(){
		$rs = $this->perumahan_update_mdl->getAll();
		echo json_encode($rs);
	}
	
	function form(){
		$data['menutitle']="Update Realisasi";
		$data['NmMenu'] = "Form Update Realisasi";
		
		$this->load->view('header_admin',$data);
		$this->load->view('perumahan_frm_update',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('perumahan_fmj_update',$data);		
		$this->load->view('footer');
	}
	
	function getform($aksi){
		$form_data = $this->input->post();
		
		$id = $form_data['id'];  
		$tahun = $form_data['tahun'];  
		$nm_keg = $form_data['nm_keg'];
		$lokasi = $form_data['lokasi'];
		$prog_rencana = $form_data['prog_rencana'];
		$prog_realisasi = $form_data['prog_realisasi'];
		//$nilai_rencana = $form_data['nilai_rencana'];
		//$nilai_realisasi = $form_data['nilai_realisasi'];

		$data = array(  
			'id' => $id,  
			'tahun' => $tahun,  
			'nm_keg' => $nm_keg,
			'lokasi' => $lokasi,
			'prog_rencana' => $prog_rencana,
			'prog_realisasi' => $prog_realisasi,
			//'nilai_rencana' => $nilai_rencana,
			//'nilai_realisasi' => $nilai_realisasi
			);
		
			$this->ubah($data,$id);
		
	}
		
	function ubah($data,$id){			
		$success = $this->perumahan_update_mdl->ubah($data,$id);	
		
		if ($success){				
			$bol=true;
			$msg="Ubah Realisasi berhasil.";
		} else {
			$bol=false;
			$msg="Ubah Realisasi gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
		
	//	echo "sucess";
	}
	
	
	
}
