<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kepegawaian extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('kepegawaian_mdl','sdm');
	}
	
	function index(){		
		$data['menutitle']="Kepegawaian";
		$data['tabtitle']="Jumlah Pegawai";
		$data['title1']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle1']="MENURUT UNIT KERJA";
		$data['title2']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle2']="MENURUT JABATAN";
		$data['title3']="ABSENSI KEHADIRAN";
		$data['subtitle3']="JUMLAH";
		
		$data['rs'] = $this->sdm->getJmlBagian();
		$data['html'] = $this->sdm->getJmlEselon();
		$data['rs2'] = $this->sdm->getAbsen();
		$data['tipe']='h';
		
		$this->load->view('header');
		$this->load->view('kepegawaian',$data);
		$this->load->view('footer');
	}
	
	function form_absensi(){
		$data['title']="Absensi Pegawai";
		$data['NmMenu']="Form Upload Data Absensi";
		$data['hasil']="";
		
		$this->load->view('header_admin');
		$this->load->view('absensi_frm',$data);
		$this->load->view('footer');
	}
	
	function upload($sukses){
		$gagal = $this->uri->segment(4,0);	
		
		$data['title']="Absensi Pegawai";
		$data['NmMenu']="Form Upload Data Absensi";
		$data['hasil']="Upload data sukses: <b>".$sukses."</b>, gagal: <b>".$gagal."</b>";
		
		$this->load->view('header_admin');
		$this->load->view('absensi_frm',$data);
			
		$this->load->view('footer');
	}
	
	function absensi($tipe='h'){		
		$data['menutitle']="Kepegawaian";
		$data['tabtitle']="Jumlah Pegawai";
		$data['title1']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle1']="MENURUT UNIT KERJA";
		$data['title2']="REKAPITULASI PEGAWAI KEMENPERA";
		$data['subtitle2']="MENURUT JABATAN";
		$data['title3']="ABSENSI KEHADIRAN";
		$data['subtitle3']="JUMLAH";
		
		$data['rs'] = $this->sdm->getJmlBagian();
		$data['html'] = $this->sdm->getJmlEselon();
		$data['rs2'] = $this->sdm->getAbsen($tipe);
		//print_r($data['rs2']);
		$data['tipe'] = $tipe;
		
		$this->load->view('header');
		$this->load->view('kepegawaian',$data);
		$this->load->view('footer');
	}
	
	function form(){
		$data['menutitle']="Kepegawaian";
		$data['NmMenu'] = "Form Kepegawaian Menurut Unit Kerja";
		$this->load->view('header_admin',$data);
		$this->load->view('kepegawaian_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('kepegawaian_fmj',$data);		
		$this->load->view('footer');
	}
	
	function form2(){
		$data['menutitle']="Kepegawaian";
		$data['NmMenu'] = "Form Kepegawaian Menurut Jabatan dan Jenis Kelamin";
		$this->load->view('header_admin',$data);
		$this->load->view('kepegawaian_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('kepegawaian_fmj2',$data);		
		$this->load->view('footer');
	}
	
	function grid(){
		$rs = $this->sdm->getRekapUK();
		echo json_encode($rs);
	}
	
	function grid2(){
		$rs = $this->sdm->getRekapJJK();
		echo json_encode($rs);
	}
	
	function ubah(){
		$no = intval($_REQUEST['no']);  
		$unit_kerja = $_REQUEST['unit_kerja'];  
		$jml_pns = intval($_REQUEST['jml_pns']);  
		$jml_honor = intval($_REQUEST['jml_honor']);  

		$array = array(  
			'no' => $no,  
			'unit_kerja' => $unit_kerja,  
			'jml_pns' => $jml_pns,  
			'jml_honor' => $jml_honor
			);
		$datano = $this->sdm->ubah($array);
		
		echo json_encode(array(  
			'no' => $no,  
			'unit_kerja' => $unit_kerja,  
			'jml_pns' => $jml_pns,  
			'jml_honor' => $jml_honor
		));  
	}
	
	function ubah2(){
		$no = intval($_REQUEST['no']);  
		$jabatan = $_REQUEST['jabatan'];  
		$jml_pria = intval($_REQUEST['jml_pria']);  
		$jml_wanita = intval($_REQUEST['jml_wanita']);  

		$array = array(  
			'no' => $no,  
			'jabatan' => $jabatan,  
			'jml_pria' => $jml_pria,  
			'jml_wanita' => $jml_wanita
			);
		$datano = $this->sdm->ubah2($array);
		
		echo json_encode(array(  
			'no' => $no,  
			'jabatan' => $jabatan,  
			'jml_pria' => $jml_pria,  
			'jml_wanita' => $jml_wanita
		));  
	}
}