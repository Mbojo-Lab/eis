<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perkantoran extends CI_Controller {

	public function index()
	{		
		$data['title']="Perkantoran";
		$this->load->view('header');
		$this->load->view('perkantoran',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Perkantoran";
		if ($tabs==2){
			redirect(base_url()."index.php/perkantoran#tabs-perk2");
		} else {
			redirect(base_url()."index.php/perkantoran#tabs-perk3");
		}
	}
}
