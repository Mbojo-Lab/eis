<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perpustakaan extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('perpustakaan_mdl','perp');
	}
	
	function index(){		
		$data['menutitle']="Perpustakaan";
		$data['tabtitle1']="Koleksi Perpustakaan";
		$data['tabtitle2']="Kunjungan Perpustakaan";
		$data['title1']="KOLEKSI PERPUSTAKAAN";
		$data['title2']="KOLEKSI MASUK";
		$data['title3']="JUMLAH KUNJUNGAN PERPUSTAKAAN PER TAHUN";
		$data['rs'] = $this->perp->getKoleksi();
		//$data['html'] = $this->perp->getKoleksiMasuk();
		$data['kunjungan'] = $this->perp->getKunjungan();
		
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
