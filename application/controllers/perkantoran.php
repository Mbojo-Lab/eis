<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perkantoran extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
	}
	
	function index()
	{		
		$data['title']="Agenda Kementrian";
		$this->load->view('header');
		$this->load->view('perkantoran',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Agenda Kementrian";
		if ($tabs==2){
			redirect(base_url()."index.php/perkantoran#tabs-perk2");
		} else {
			redirect(base_url()."index.php/perkantoran#tabs-perk3");
		}
	}
}
