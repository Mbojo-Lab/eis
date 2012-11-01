<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahan extends CI_Controller {
	
	public function index(){		
		$data['title']="Perumahan";		
		$this->load->model('Perumahan_mdl','perm');
		
        $data['html'] = $this->perm->tampil();		
		
		
		$this->load->view('header');
		
		$this->load->view('perumahan',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Perumahan";
		if ($tabs==2){
			redirect(base_url()."index.php/perumahan#tabs-peru2");
		} else {
			redirect(base_url()."index.php/perumahan#tabs-peru3");
		}
	}
	
	function tampil(){
	
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */