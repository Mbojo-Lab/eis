<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahann extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('Perumahan_mdll','perm');
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
			redirect(base_url()."index.php/perumahann#tabs-peru2");
		} else {
			redirect(base_url()."index.php/perumahann#tabs-peru3");
		}
	}
	
	function get_kota($id) {
        $tmp    = '';
        $data   = $this->perm->get_kota_by_provinsi($id);
        if(!empty($data)){
            $tmp .= "<option value=''>Pilih kota</option>";
            foreach($data as $row) {   
                $tmp .= "<option value='".$row->nm_kota."'>".$row->nm_kota."</option>";
            }
        } else {
            $tmp .= "<option value=''>Pilih Kota / Kabupaten</option>";
        }
        die($tmp);
    }
	
	
	function form3(){
		$data['menutitle']="Form Realisasi";
		$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->perm->get_unit();
		$data['provinsi'] = $this->perm->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frmmm',$data);
		$this->load->view('perumahan/perumahan_fmjjj',$data);		
		$this->load->view('footer');
	}
	
	function form(){
		$data['menutitle']="Form Anggaran";
		$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->perm->get_unit();
		$data['provinsi'] = $this->perm->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frmm',$data);
		$this->load->view('perumahan/perumahan_fmjj',$data);		
		$this->load->view('footer');
	}
	
	function form2(){
		$data['menutitle']="Form Kegiatan Perumahan";
		$data['html']= $this->perm->getKegiatan1();
				
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frm2',$data);
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
		$unit_kerja = $form_data['unit_kerja'];  
		$id_keg = $form_data['id_keg'];  
		$provinsi = $form_data['provinsi']; 
		$volume = $form_data['volume']; 
		$satuan = $form_data['satuan']; 
		$nilai = $form_data['nilai'];
		
		$data = array(  
			'tahun' => $tahun,  
			'unit_kerja' => $unit_kerja,  
			'id_keg' => $id_keg,  
			'provinsi' => $provinsi,
			'volume' => $volume,  
			'satuan' => $satuan,
			'nilai' => $nilai
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
			'no' => $no,
			'nama' => $nama,
			'sat' => $sat,
			//'sasaran' => $sasaran,
			'posisi' => $posisi,
			'kategori' => $kategori,
			'status' => $status
			);
			
			$this->ubah($data,$parent_id);
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
		if ($success){				
			$bol=true;
			$msg="Ubah data berhasil.";
		} else {
			$bol=false;
			$msg="Ubah data gagal.";		
		}
		
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
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */