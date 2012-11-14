<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kepegawaian extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('kepegawaian_mdl','sdm');
	}
	
	function index(){		
		$data['menutitle']="Kepegawaian";
		$data['tabtitle']="Jumlah Pegawai";
		$data['title1']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle1']="MENURUT UNIT KERJA";
		$data['title2']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle2']="MENURUT JABATAN";
		
		$data['rs'] = $this->sdm->getJmlBagian();
		$data['html'] = $this->sdm->getJmlEselon();
		
		$this->load->view('header');
		$this->load->view('kepegawaian',$data);
		$this->load->view('footer');
	}
	
	function form(){
		$this->load->view('jqgrid_dist');
		$this->load->view('kepegawaian_frm');
	
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */