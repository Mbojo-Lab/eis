<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahann extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'index.php/member/login'); }
		
		$this->load->model('Perumahan_mdll','perm');
		$this->load->helper('form', 'url', 'html');
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
	
	/*
	function form3(){
		$data['menutitle']="Form Realisasi";
		$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->perm->get_unit();
		$data['provinsi'] = $this->perm->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frmmm',$data);
		$this->load->view('perumahan/perumahan_fmjjj',$data);		
		$this->load->view('footer');
	} */
	function form3(){
		$data['menutitle']="Realisasi";
		$data['NmMenu'] = "Form Realisasi";
		$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->perm->get_unit();
		$data['provinsi'] = $this->perm->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frmmm',$data);
		$this->load->view('mst_fcj1',$data);
		$this->load->view('perumahan/perumahan_fmjjj',$data);		
		$this->load->view('footer');
	}
	
	function getform($aksi){
		$form_data = $this->input->post();
		
		$tahun = $form_data['tahun'];  
		$unit_kerja = $form_data['unit_kerja'];  
		$kegiatan = $form_data['kegiatan'];
		$volume = $form_data['volume'];  
		$satuan = $form_data['satuan'];  
		$anggaran = $form_data['anggaran'];
		$provinsi = $form_data['provinsi'];
		$id = $form_data['id'];
		
		$data = array(  
			'tahun' => $tahun,  
			'unit_kerja' => $unit_kerja,  
			'kegiatan' => $kegiatan,
			'volume' => $volume,
			'satuan' => $satuan,
			'anggaran' => $anggaran,
			'provinsi' => $provinsi,
			'id' => $id
			);
		if ($aksi=="tambah"){	
			$this->tambah($data);	
		} else {
			$this->ubah($data,$id);
		}
	}
	
	function tambah($data){			
		$success = $this->perm->tambah($data);	
		
		if ($success){				
			$bol=true;
			$msg="Tambah anggaran berhasil.";
		} else {
			$bol=false;
			$msg="Tambah anggaran gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function ubah($data,$id){			
		$success = $this->perm->ubah($data,$id);	
		
		if ($success){				
			$bol=true;
			$msg="Ubah anggaran berhasil.";
		} else {
			$bol=false;
			$msg="Ubah anggaran gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function hapus(){
		$id=$_REQUEST['id'];
		$sucess = $this->perm->hapus($id);
		
		if ($success){				
			$bol=true;
			$msg="Hapus data berhasil.".$date;
		} else {
			$bol=false;
			$msg="Hapus data GAGAL.".$date;
		}
		$msg="Hapus data berhasil.";
		echo json_encode(array('success'=>true,'msg'=>$msg)); 
	}
	/*
	function form(){
		$data['menutitle']="Form Anggaran";
		$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->perm->get_unit();
		$data['provinsi'] = $this->perm->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frmm',$data);
		$this->load->view('perumahan/perumahan_fmjj',$data);		
		$this->load->view('footer');
	} */
	
	function grid(){
		$rs = $this->perm->getAll();
		echo json_encode($rs);
	}
	function gridreal(){
		$rs = $this->perm->getAllreal();
		echo json_encode($rs);
	}
	
	function form(){
		$data['menutitle']="Anggaran";
		$data['NmMenu'] = "Form Anggaran";
		$data['html']= $this->perm->getKegiatan();
		$data['unit_kerja'] = $this->perm->get_unit();
		$data['provinsi'] = $this->perm->get_provinsi();
		
		$this->load->view('header_admin');
		$this->load->view('perumahan/perumahan_frmm',$data);
		$this->load->view('mst_fcj',$data);
		$this->load->view('perumahan/perumahan_fmjj',$data);		
		$this->load->view('footer');
	}
	
	function getformreal($aksi){
		$form_data = $this->input->post();
		
		$tahun= $form_data['tahun'];  
		$unit_kerja = $form_data['unit_kerja'];  
		$nm_keg = $form_data['nm_keg'];  
		$provinsi = $form_data['provinsi']; 
		$kota = $form_data['kota']; 
		$lokasi = $form_data['lokasi']; 
		$x = $form_data['x'];
		$y = $form_data['y'];
		$no_kontrak = $form_data['no_kontrak'];
		$tgl_kontrak = $form_data['tgl_kontrak'];
		$durasi = $form_data['durasi'];
		$tgl_mulai = $form_data['tgl_mulai'];
		$tgl_akhir = $form_data['tgl_akhir'];
		$tgl_act_mulai = $form_data['tgl_act_mulai'];
		$tgl_act_akhir = $form_data['tgl_act_akhir'];
		$prog_rencana = $form_data['prog_rencana'];
		$prog_realisasi = $form_data['prog_realisasi'];
		$biaya_realisasi = $form_data['biaya_realisasi'];
		$bln_realisasi = $form_data['bln_realisasi'];
		$keterangan = $form_data['keterangan'];
		$permasalahan = $form_data['permasalahan'];
		$id = $form_data['id'];
		$nilai_rencana = $form_data['nilai_rencana'];
		$nilai_realisasi = $form_data['nilai_realisasi'];
		
		$data = array(  
			'tahun' => $tahun,  
			'unit_kerja' => $unit_kerja,  
			'nm_keg' => $nm_keg,  
			'provinsi' => $provinsi,
			'kota' => $kota,  
			'lokasi' => $lokasi,
			'x' => $x,
			'y' => $y,
			'no_kontrak' => $no_kontrak,
			'tgl_kontrak' => $tgl_kontrak,
			'durasi' => $durasi,
			'tgl_mulai' => $tgl_mulai,
			'tgl_akhir' => $tgl_akhir,
			'tgl_act_mulai' => $tgl_act_mulai,
			'tgl_act_akhir' => $tgl_act_akhir,
			'prog_rencana' => $prog_rencana,
			'prog_realisasi' => $prog_realisasi,
			'biaya_realisasi' => $biaya_realisasi,
			'bln_realisasi' => $bln_realisasi,
			'keterangan' => $keterangan,
			'permasalahan' => $permasalahan,
			'id' => $id,
			'nilai_rencana' => $nilai_rencana,
			'nilai_realisasi' => $nilai_realisasi
			
			);
		if ($aksi=="tambahreal"){	
			$this->tambahreal($data);	
		} else {
			$this->ubahreal($data,$id);
		}
	}
	
	function tambahreal($data){			
		$success = $this->perm->tambahreal($data);	
		
		if ($success){				
			$bol=true;
			$msg="Tambah realisasi berhasil.";
		} else {
			$bol=false;
			$msg="Tambah realisasi gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function ubahreal($data,$id){			
		$success = $this->perm->ubahreal($data,$id);	
		
		if ($success){				
			$bol=true;
			$msg="Ubah realisasi berhasil.";
		} else {
			$bol=false;
			$msg="Ubah realisasi gagal.";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg)); 
	}
	
	function hapusreal(){
		$id=$_REQUEST['id'];
		$sucess = $this->perm->hapusreal($id);
		
		if ($success){				
			$bol=true;
			$msg="Hapus data berhasil.".$date;
		} else {
			$bol=false;
			$msg="Hapus data GAGAL.".$date;
		}
		$msg="Hapus data berhasil.";
		echo json_encode(array('success'=>true,'msg'=>$msg)); 
	}
}
	/*	
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
	
		function simpann(){
		$form_data = $this->input->post();
		
		$tahun= $form_data['tahun'];  
		$unit_kerja = $form_data['unit_kerja'];  
		$id_keg = $form_data['id_keg'];  
		$provinsi = $form_data['provinsi']; 
		$nm_kota = $form_data['nm_kota']; 
		$lokasi = $form_data['lokasi']; 
		$x = $form_data['x'];
		$y = $form_data['y'];
		$no_kontrak = $form_data['no_kontrak'];
		$tgl_kontrak = $form_data['tgl_kontrak'];
		$durasi = $form_data['durasi'];
		$tgl_mulai = $form_data['tgl_mulai'];
		$tgl_akhir = $form_data['tgl_akhir'];
		$tgl_act_mulai = $form_data['tgl_act_mulai'];
		$tgl_act_akhir = $form_data['tgl_act_akhir'];
		$prog_rencana = $form_data['prog_rencana'];
		$prog_realisasi = $form_data['prog_realisasi'];
		$biaya_realisasi = $form_data['biaya_realisasi'];
		$bln_realisasi = $form_data['bln_realisasi'];
		$keterangan = $form_data['keterangan'];
		$permasalahan = $form_data['permasalahan'];
		
		$data = array(  
			'tahun' => $tahun,  
			'unit_kerja' => $unit_kerja,  
			'id_keg' => $id_keg,  
			'provinsi' => $provinsi,
			'nm_kota' => $nm_kota,  
			'lokasi' => $lokasi,
			'x' => $x,
			'y' => $y,
			'no_kontrak' => $no_kontrak,
			'tgl_kontrak' => $tgl_kontrak,
			'durasi' => $durasi,
			'tgl_mulai' => $tgl_mulai,
			'tgl_akhir' => $tgl_akhir,
			'tgl_act_mulai' => $tgl_act_mulai,
			'tgl_act_akhir' => $tgl_act_akhir,
			'prog_rencana' => $prog_rencana,
			'prog_realisasi' => $prog_realisasi,
			'biaya_realisasi' => $biaya_realisasi,
			'bln_realisasi' => $bln_realisasi,
			'keterangan' => $keterangan,
			'permasalahan' => $permasalahan
			);
		
		$success = $this->perm->simpann($data);	
		
		if ($success){				
			$bol=true;
			$msg="Simpan data berhasil.";
		} else {
			$bol=false;
			$msg="Simpan data GAGAL!";		
		}
		
		echo json_encode(array('success'=>$bol,'msg'=>$msg));
	} */



/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */