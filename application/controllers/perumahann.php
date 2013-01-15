<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Perumahann extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
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
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */