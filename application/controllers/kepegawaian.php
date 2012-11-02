<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kepegawaian extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('kepegawaian_mdl','sdm');
	}
	
	function index(){		
		$data['menutitle']="Kepegawaian";
		$data['tabtitle']="Jumlah Pegawai";
		$data['title1']="JUMLAH PEGAWAI BERDASARKAN BAGIAN";
		$data['title2']="JUMLAH PEGAWAI BERDASARKAN ESELON";
		
		$data['rs'] = $this->sdm->getJmlBagian();
		$data['html'] = $this->sdm->getJmlEselon();
		
		$this->load->view('header');
		$this->load->view('kepegawaian',$data);
		$this->load->view('footer');
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */