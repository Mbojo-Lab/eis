<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahan extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('Perumahan_mdl','perm');
		$this->load->helper('form');
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
	
	function form(){
		$data['menutitle']="Form Perumahan";
		$data['html']= $this->perm->getKegiatan();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan_frm',$data);
		$this->load->view('perumahan_fmj',$data);		
		$this->load->view('footer');
	}
	
	function getDetail(){
		$tahun = $_REQUEST['tahun'];
		$id_keg = $_REQUEST['id_keg'];
		
		$data = array(
		'tahun'=>$tahun,
		'id_keg' => $id_keg
		);
		
		$rs=$this->perm->getDetail($data);
		
		
		echo json_encode($rs);
		
	}
	
	function simpan(){
		$form_data = $this->input->post();
		
		$tahun= $form_data['tahun'];  
		$id_keg = $form_data['id_keg'];  
		$target = $form_data['target']; 
		$tg_anggaran = $form_data['tg_anggaran']; 
		$realisasi = $form_data['realisasi']; 
		$re_anggaran = $form_data['re_anggaran']; 
		$address = $form_data['alamat']; 
		$x = $form_data['x'];
		$y = $form_data['y'];  

		$data = array(  
			'tahun' => $tahun,  
			'id_keg' => $id_keg,  
			'target' => $target,
			'tg_anggaran' => $tg_anggaran,  
			'realisasi' => $realisasi,
			're_anggaran' => $re_anggaran,  
			'address' => $address,
			'x' => $x,  
			'y' => $y
			);
		
		$success = $this->perm->simpan($data);	
		
		if ($success){				
			$bol=true;
			$msg="Simpan data berhasil.";
		} else {
			$bol=false;
			$msg="Simpan data GAGAL!";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg));
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */