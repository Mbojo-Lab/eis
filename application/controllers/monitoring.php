<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Monitoring extends CI_Controller 
{
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('monitoring_mdl','mdl');
	} 
	
	function index(){		
		$data['menutitle']="Monitoring";
		$data['title']="Perbandingan Jumlah Pagu Kegiatan";
		$data['subtitle']="Per Tahun";
		
		$data['html'] = $this->mdl->getJmlPagu();
		$this->load->view('header');
		$this->load->view('monitoring/mon_cart',$data);
		$this->load->view('footer');
	}
	
	function subChart($tahun,$jenis){
		$data['menutitle']="Monitoring";
		$data['title']="Perbandingan Jumlah Pagu Kegiatan Tahun $tahun ";
		$data['subtitle']="Jenis Kegiatan $jenis";
		
		$data['html'] = $this->mdl->getJmlPagu2($tahun,$jenis);
		$this->load->view('header');
		$this->load->view('monitoring/mon_cart2',$data);
		$this->load->view('footer');
	}
	
	function form(){
		$data['title']="Pengendalian dan Evaluasi Program";
		$data['NmMenu']="Form Upload Program";
		$data['hasil']="";
		
		$this->load->view('header_admin');
		$this->load->view('monitoring/upload',$data);
		$this->load->view('footer');
	
	}
	
	function upload($sukses){
		$gagal = $this->uri->segment(4,0);	
		
		$data['title']="Pengendalian dan Evaluasi Program";
		$data['NmMenu']="Form Upload Program";
		$data['hasil']="Upload data sukses: <b>".$sukses."</b>, gagal: <b>".$gagal."</b>";
		
		$this->load->view('header_admin');
		$this->load->view('monitoring/upload',$data);
			
		$this->load->view('footer');
	}
	
	function swakelola(){
		$data['title']="Kegiatan Swakelola";
		
		$data['rs'] = $this->mdl->getAll('Swakelola');
		$this->load->view('header');
		$this->load->view('monitoring/kegiatan',$data);
		$this->load->view('footer');
	}
	
	function kontraktual(){
		$data['title']="Kegiatan Kontraktual";
		$this->load->view('header');
		$data['rs'] = $this->mdl->getAll('Kontraktual');
		$this->load->view('monitoring/kegiatan',$data);
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
