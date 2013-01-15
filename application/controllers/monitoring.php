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
		$data['tahun']=$tahun;
		$data['jenis']=$jenis;
		
		$data['html'] = $this->mdl->getJmlPagu2($tahun,$jenis);
		$this->load->view('header');
		$this->load->view('monitoring/mon_cart2',$data);
		$this->load->view('footer');
	}
	
	function subChart1($tahun,$unit_kerja,$jenis){
		$data['menutitle']="Monitoring";
		$data['title']="Perbandingan Jumlah Pagu Kegiatan Tahun $tahun Unit Kerja $unit_kerja ";
		$data['subtitle']="Jenis Kegiatan $jenis";
		
		$data['html'] = $this->mdl->getJmlPagu3($tahun,$unit_kerja,$jenis);
		$this->load->view('header');
		$this->load->view('monitoring/mon_cart3',$data);
		$this->load->view('footer');
	}
	
	/*function form($unit_kerja=''){
		$data['title']="Pengendalian dan Evaluasi Program";
		$data['NmMenu']="Form Upload Program";
		$data['hasil']="";
		$data['unit_kerja'] = $this->mdl->get_unit();
		//$data['html1']= $this->mdl->ambilBagian($unit_kerja);
		$this->load->view('header_admin');
		$this->load->view('monitoring/upload',$data);
		$this->load->view('footer');
	
	}*/
	
	function form(){
		$data['title']="Pengendalian dan Evaluasi Program";
		$data['menutitle']="Form Input Program";
		//$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->mdl->get_unit();
		//$data['provinsi'] = $this->mdl->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('monitoring/monitoring_frm',$data);
		$this->load->view('monitoring/monitoring_fmj',$data);		
		$this->load->view('footer');
	}
	
	function simpan(){
		$form_data = $this->input->post();
		
		$jenis_keg= $form_data['jenis_keg'];  
		$nama_keg = $form_data['nama_keg'];  
		$anggaran = $form_data['anggaran'];  
		$bagian = $form_data['bagian']; 
		$tahun = $form_data['tahun']; 
		$unit_kerja = $form_data['unit_kerja']; 
				
		$data = array(  
			'jenis_keg' => $jenis_keg,  
			'nama_keg' => $nama_keg,  
			'anggaran' => $anggaran,  
			'bagian' => $bagian,
			'tahun' => $tahun,  
			'unit_kerja' => $unit_kerja
			);
		
		$success = $this->mdl->simpan($data);	
		
		if ($success){				
			$bol=true;
			$msg="Simpan data berhasil.";
		} else {
			$bol=false;
			$msg="Simpan data GAGAL!";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg));
	}
	
	function get_bagian($id) {
        $tmp    = '';
        $data   = $this->mdl->get_bagian_by_unit($id);
        if(!empty($data)){
            $tmp .= "<option value=''>Pilih Unit</option>";
            foreach($data as $row) {   
                $tmp .= "<option value='".$row->unit_bagian."'>".$row->unit_bagian."</option>";
            }
        } else {
            $tmp .= "<option value=''>Pilih Unit Bagian</option>";
        }
        die($tmp);
    }
	
	function upload($sukses){
		$gagal = $this->uri->segment(4,0);	
		
		$data['title']="Pengendalian dan Evaluasi Program";
		$data['NmMenu']="Form Upload Program";
		$data['hasil']="Upload data sukses: <b>".$sukses."</b>, gagal: <b>".$gagal."</b>";
		$data['unit_kerja'] = $this->mdl->get_unit();
		
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
