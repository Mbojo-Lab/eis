<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Eprogress extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'index.php/member/login'); }
		
		$this->load->model('eprogress_mdl','eprog');
		$this->load->helper('form');
	}	
	
	
	function progressTabel($ket){	
		$ket=str_replace("%20", " ", $ket);	
		$data['menutitle']="Progress ".$ket;
		$data['tabtitle']="Progress Pembangunan";		
		$data['title']="LAPORAN PROGRESS PEMBANGUNAN RUSUN DI LUAR PULAU JAWA TA 2012";		
		$data['subtitle']="SATUAN KERJA PENYEDIAAN PERUMAHAN";
		$data['subtitle1']="KEMENTRIAN PERUMAHAN RAKYAT REPUBLIK INDONESIA";
        $data['html'] = $this->eprog->tampil_progres($ket);		
		
		
		$this->load->view('header');
		
		$this->load->view('perumahan/progres',$data);
		$this->load->view('footer');
	}
	
}