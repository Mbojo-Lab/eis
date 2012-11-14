<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Monitoring extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
	}
	
	function index()
	{		
		$data['title']="Monitoring";
		$this->load->view('header');
		$this->load->view('monitoring',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Monitoring";
		if ($tabs==2){
			redirect(base_url()."index.php/monitoring#tabs-mon2");
		} else {
			redirect(base_url()."index.php/monitoring#tabs-mon3");
		}
	}

}
