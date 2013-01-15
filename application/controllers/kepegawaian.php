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
		$data['html'] = $this->sdm->getJmlEselon(date('m'),date('Y'));
		$data['totpeg'] = $this->sdm->getJmlTot(date('m'),date('Y'));
		$data['rs2'] = $this->sdm->getAbsenNew();
		
		$bln = $this->uri->segment(3,0);	
		if ($bln==0) $bln=date('m');
		$thn = $this->uri->segment(4,0);	
		if ($thn==0) $thn=date('Y');
		$data['table_pensiun'] = $this->sdm->getview_pensiun2($bln, $thn);
		$data['tipe']='h';
		
		$this->load->view('header');
		$this->load->view('kepegawaian/kepegawaian',$data);
		
		$this->load->view('footer');
	}
	
	function form_absensi(){
		$data['title']="Absensi Pegawai";
		$data['NmMenu']="Form Upload Data Absensi";
		$data['hasil']="";
		
		$this->load->view('header_admin');
		$this->load->view('kepegawaian/absensi_frm',$data);
		$this->load->view('footer');
	}
	
	function upload($sukses){
		$gagal = $this->uri->segment(4,0);	
		
		$data['title']="Absensi Pegawai";
		$data['NmMenu']="Form Upload Data Absensi";
		$data['hasil']="Upload data sukses: <b>".$sukses."</b>, gagal: <b>".$gagal."</b>";
		
		$this->load->view('header_admin');
		$this->load->view('kepegawaian/absensi_frm',$data);
			
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
		
		
		$bln=date('m');
		$thn=date('Y');
		$data['rs'] = $this->sdm->getJmlBagian();
		$data['html'] = $this->sdm->getJmlEselon($bln, $thn);
		$data['totpeg'] = $this->sdm->getJmlTot($bln, $thn);
		$data['rs2'] = $this->sdm->getAbsenNew($tipe);
		$data['rsM'] = $this->sdm->getAbsenM();
		$data['rsB'] = $this->sdm->getAbsenB();
		//print_r($data['rs2']);		
		
		$data['table_pensiun'] = $this->sdm->getview_pensiun2($bln, $thn);
		$data['tipe'] = $tipe;
		$data['absen'] = 'absen';
		
		
		
		$this->load->view('header');
		$this->load->view('kepegawaian/kepegawaian',$data);
		$this->load->view('footer');
	}
	
	function form(){
		$data['menutitle']="Kepegawaian";
		$data['NmMenu'] = "Form Kepegawaian Menurut Unit Kerja";
		$this->load->view('header_admin',$data);
		$this->load->view('kepegawaian/kepegawaian_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('kepegawaian/kepegawaian_fmj',$data);		
		$this->load->view('footer');
	}
	
	function form2(){
		$data['menutitle']="Kepegawaian";
		$data['NmMenu'] = "Form Kepegawaian Menurut Jabatan dan Jenis Kelamin";
		$this->load->view('header_admin',$data);
		$this->load->view('kepegawaian/kepegawaian_frm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('kepegawaian/kepegawaian_fmj2',$data);		
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
	
	function cron(){
		$rs=$this->sdm->getxml();
		//foreach ($rs as $r1){
			//print_r($r1)."<br>&nbsp;<br>";
			//foreach ($r1 as $r2){
				//print_r($r2)."<br>&nbsp;<br>";
				//foreach ($r2 as $r3){
					//print_r($r3)."<br>&nbsp;<br>";
				//}
			//}
		//}
		/*foreach ($rs['detail'] as $r1){
			foreach ($r1 as $r2){
				print_r($r2)."<br>&nbsp;<br>";
			}
		}*/
	}
	
	function pegawailist($unitkerja){
		$status0=$this->uri->segment(4,0);
		$status=urldecode($status0);
		
		$data['title']="Absensi Kehadiran Unit Kerja $unitkerja dengan Status ".htmlspecialchars($status);
		
		$data['rs'] = $this->sdm->getAbsenList($unitkerja,$status);
		$data['status']=$status;
		$this->load->view('header');
		$this->load->view('kepegawaian/pegawai_list',$data);
		$this->load->view('footer');
	}
	
	function tes(){
		print_r($this->sdm->getAbsenB());
		
	}
	
}