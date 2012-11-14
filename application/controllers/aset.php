<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Aset extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
	}
	
	function index(){		
		$data['title']="Aset";
		$this->load->view('header');
		$this->load->view('aset',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Aset";
		if ($tabs==2){
			redirect(base_url()."index.php/aset#tabs-as2");
		} else {
			redirect(base_url()."index.php/aset#tabs-as3");
		}
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */