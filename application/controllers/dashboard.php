<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('geospasial_mdl','gis');
		$this->load->model('kepegawaian_mdl','sdm');
		$this->load->model('Perumahan_mdl','perm');
		$this->load->model('monitoring_mdl','mon');
		$this->load->model('perpustakaan_mdl','perp');
		$this->load->model('eprogress_mdl','eprog');
	}
	
	function index(){	  
        //GEOSPASIAL
		$data['title']="GeoSpasial";
		$data['rs'] = $this->gis->prov();
		
	    //KEPEGAWAIAN
		$data['title_kep1']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle_kep1']="MENURUT JABATAN";
		$data['html_kep1'] = $this->sdm->getJmlEselon(date('m'), date('Y'));
		$data['totpeg'] = $this->sdm->getJmlTot(date('m'), date('Y'));
		
		//PERUMAHAN
		$data['title_peru']="TARGET DAN CAPAIAN KINERJA ";
		$data['subtitle_peru']="PEMBANGUNAN PERUMAHAN TAHUN 2010 - 2014";			
		
        $data['html_peru'] = $this->perm->chartBar();		
		
		//MONITORING
		$data['title_mon']="Perbandingan Jumlah Pagu Kegiatan";
		$data['subtitle_mon']="Per Tahun";
		$data['html_mon'] = $this->mon->getJmlPagu();
			
		//PERPUSTAKAAN
		$data['title_perp1']="KOLEKSI PERPUSTAKAAN";
		$data['title_perp2']="JUMLAH KUNJUNGAN PERPUSTAKAAN PER TAHUN";
		$data['rs_perp'] = $this->perp->getKoleksi();
		$data['kunjungan'] = $this->perp->getKunjungan();
		
		//E-PROGRESS
		$data['rs_eprog'] = $this->eprog->pie();
		
		$this->load->view('header');
		$this->load->view('index',$data);
		$this->load->view('footer');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */