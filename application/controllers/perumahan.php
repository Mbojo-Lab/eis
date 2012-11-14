<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahan extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('Perumahan_mdl','perm');
	}	
	
	function index(){		
		$data['menutitle']="Perumahan";
		$data['tabtitle']="Kinerja";
		$data['title']="TARGET DAN CAPAIAN KINERJA";
		$data['subtitle']="PEMBANGUNAN PERUMAHAN TAHUN 2010 - 2014";			
		
        $data['html'] = $this->perm->chartBar();		
		
		
		$this->load->view('header');
		
		$this->load->view('perumahan/kinerja_chart',$data);
		$this->load->view('footer');
	}
	
	function kinerjaTabel($tahun){		
		$data['menutitle']="Perumahan";
		$data['tabtitle']="Kinerja";		
		$data['title']="TARGET DAN CAPAIAN KINERJA PEMBANGUNAN PERUMAHAN TAHUN $tahun";		
		
        $data['html'] = $this->perm->tampil($tahun);		
		
		
		$this->load->view('header');
		
		$this->load->view('perumahan/kinerja',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="Kinerja";
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