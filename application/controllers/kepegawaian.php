<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kepegawaian extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{		
		$data['title']="Kepegawaian";
		$this->load->view('header');
		$this->load->view('kepegawaian',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Kepegawaian";
		if ($tabs==2){
			redirect(base_url()."index.php/kepegawaian#tabs-kep2");
		} else {
			redirect(base_url()."index.php/kepegawaian#tabs-kep3");
		}
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */