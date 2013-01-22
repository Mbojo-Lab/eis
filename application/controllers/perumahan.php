<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahan extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'index.php/member/login'); }
		
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
	function progresTabel(){		
		$data['menutitle']="Progress";
		$data['tabtitle']="Progress Pembangunan";		
		$data['title']="LAPORAN PROGRESS PEMBANGUNAN RUSUN DI LUAR PULAU JAWA TA 2012";		
		$data['subtitle']="SATUAN KERJA PENYEDIAAN PERUMAHAN";
		$data['subtitle1']="KEMENTRIAN PERUMAHAN RAKYAT REPUBLIK INDONESIA";
        $data['html'] = $this->perm->tampil_progres();		
		
		
		$this->load->view('header');
		
		$this->load->view('perumahan/progres',$data);
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
		$this->load->view('perumahan/perumahan_frm',$data);
		$this->load->view('perumahan/perumahan_fmj',$data);		
		$this->load->view('footer');
	}
	
	function form2(){
		$data['menutitle']="Kegiatan Perumahan";
		$data['NmMenu'] = "Form Kegiatan";
		$data['html']= $this->perm->getKegiatan1();
				
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frm2',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('perumahan/perumahan_fcj',$data);	
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
		$sasaran = $form_data['sasaran'];  
		$target = $form_data['target']; 
		$tg_anggaran = $form_data['tg_anggaran']; 
		$realisasi = $form_data['realisasi']; 
		$re_anggaran = $form_data['re_anggaran']; 

		$data = array(  
			'tahun' => $tahun,  
			'id_keg' => $id_keg,  
			'sasaran' => $sasaran,  
			'target' => $target,
			'tg_anggaran' => $tg_anggaran,  
			'realisasi' => $realisasi,
			're_anggaran' => $re_anggaran
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
	
	function tree(){	
		echo $this->perm->tree();
	}
	
	function getKeg($id){
		$rs = $this->perm->getKeg($id);
		echo json_encode($rs);
	}
	
	function getform($aksi){
		$form_data = $this->input->post();
		
		$id = $form_data['id'];
		$parent_id = $form_data['parent_id'];  
		$no = $form_data['no'];
		$nama = nl2br($form_data['nama']); 
		$sat = $form_data['sat']; 
		//$sasaran = $form_data['sasaran']; 
		$posisi = $form_data['posisi']; 
		$kategori = $form_data['kategori'];
		$status = $form_data['status'];
		
		if ($parent_id=='') $parent_id=0;
		//if ($sasaran=='') $sasaran=0;
		
		if ($aksi=="tambah"){	
			$data = array(  
			'parent_id' => $parent_id,  
			'no' => $no,
			'nama' => $nama,
			'sat' => $sat,
			//'sasaran' => $sasaran,
			'posisi' => $posisi,
			'kategori' => $kategori,
			'status' => $status
			);
			$data['id'] = $this->perm->newID($data);	
			$this->tambah($data);	
		} else {
			$data = array(  
			'id' => $id,
			'parent_id' =>$parent_id,
			'no' => $no,
			'nama' => $nama,
			'sat' => $sat,
			//'sasaran' => $sasaran,
			'posisi' => $posisi,
			'kategori' => $kategori,
			'status' => $status
			);
			
			$this->ubah($data,$id);
		}
	}
	
	function tambah($data){			
		$success = $this->perm->tambah($data);	
		//print_r($data);
		
		if ($success){				
			$bol=true;
			$msg="Tambah data berhasil.";
		} else {
			$bol=false;
			$msg="Tambah data gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 	
		
		
	}
	
	function ubah($data,$id){			
		$success = $this->perm->ubah($data,$id);	
		//print_r($data);
		/*if ($success){				
			$bol=true;
			$msg="Ubah data berhasil.";
		} else {
			$bol=false;
			$msg="Ubah data gagal.";		
		}*/
		$bol=true;
		$msg = 'ubah data success';
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function simpanGrid($id){
		$id_keg = $id;  
		$no = intval($_REQUEST['no']);  
		$provinsi = $_REQUEST['provinsi'];  
		$kota = $_REQUEST['kota'];  
		$address = $_REQUEST['address'];  
		$x = $_REQUEST['x'];  
		$y = $_REQUEST['y'];  
		$nilai = $_REQUEST['nilai'];  
		$ket = $_REQUEST['ket'];  

		$array = array(   
			'id_gis_group' => $id_keg,
			'no' => $no,
			'provinsi' => $provinsi,  
			'kota' => $kota,  
			'address' => $address,  
			'x' => $x,
			'y' => $y,
			'nilai' => $nilai,
			'ket' => $ket
			);
			
		if	($no==''){
			$hasil = $this->perm->tambahGrid($array);
		} else {
			$hasil = $this->perm->ubahGrid($array);
		}
		
		//echo $no;  
		print_r($hasil);  
	}
	
	function hapusGrid($id_keg){
		$no=intval($_REQUEST['no']);
		$sucess = $this->perm->hapusGrid($id_keg,$no);
		
		/*if ($success){				
			$bol=true;
			$msg="Hapus data berhasil.".$date;
		} else {
			$bol=false;
			$msg="Hapus data GAGAL.".$date;
		}*/
		$msg="Hapus data berhasil.";
		echo json_encode(array('success'=>true,'msg'=>$msg)); 
	}
	
	function hapus(){
		$id=$_REQUEST['id'];
		$sucess = $this->perm->hapus($id);
		
		/*if ($success){				
			$bol=true;
			$msg="Hapus data berhasil.".$date;
		} else {
			$bol=false;
			$msg="Hapus data GAGAL.".$date;
		}*/
		$msg="Hapus data berhasil.";
		echo json_encode(array('success'=>true,'msg'=>$msg)); 
	}
	
	function grid($id=0){
		$rs = $this->perm->getGrid($id);
		echo json_encode($rs);
	}
	
	function gridKeg(){
		$rs = $this->perm->getAll();
		echo json_encode($rs);
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */