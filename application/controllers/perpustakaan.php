<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perpustakaan extends CI_Controller {

	public function index()
	{		
		$data['title']="Perpustakaan";
		$this->load->view('header');
		$this->load->view('perpustakaan',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Perpustakaan";
		if ($tabs==2){
			redirect(base_url()."index.php/perpustakaan#tabs-perp2");
		} else {
			redirect(base_url()."index.php/perpustakaan#tabs-perp3");
		}
	}
}
