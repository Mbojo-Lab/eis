<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('geospasial_mdl','gis');
		$this->load->model('kepegawaian_mdl','sdm');
		$this->load->model('Perumahan_mdl','perm');
		$this->load->model('perpustakaan_mdl','perp');
	}
	
	function index(){	  
        //GEOSPASIAL
		$data['title']="GeoSpasial";
		$data['rs'] = $this->gis->ambildata(12);
		
	    //KEPEGAWAIAN
		$data['title_kep1']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle_kep1']="MENURUT JABATAN";
		$data['html_kep1'] = $this->sdm->getJmlEselon();
		$data['totpeg'] = $this->sdm->getJmlTot();
		
		//PERUMAHAN
		$data['title_peru']="TARGET DAN CAPAIAN KINERJA ";
		$data['subtitle_peru']="PEMBANGUNAN PERUMAHAN TAHUN 2010 - 2014";			
		
        $data['html_peru'] = $this->perm->chartBar();		
		
		//PERPUSTAKAAN
		$data['title_perp1']="KOLEKSI PERPUSTAKAAN";
		$data['title_perp2']="JUMLAH KUNJUNGAN PERPUSTAKAAN PER TAHUN";
		$data['rs_perp'] = $this->perp->getKoleksi();
		$data['kunjungan'] = $this->perp->getKunjungan();
		
		$this->load->view('header');
		$this->load->view('index',$data);
		$this->load->view('footer');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */