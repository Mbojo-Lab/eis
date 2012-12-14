<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Geospasial extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (! $this->session->userdata('logged_in')){ redirect(base_url().'member/login'); }
		
		$this->load->model('geospasial_mdl','gis');
	}
	
	function index(){		
		$data['title']="GeoSpasial";
		$data['rs'] = $this->gis->ambildata(39);
		
		$this->load->view('header');
		$this->load->view('geospasial',$data);
		$this->load->view('footer');
	}
	
	function tabs($tabs=''){
		$data['title']="GeoSpasial";
		if ($tabs==2){
			redirect(base_url()."index.php/geospasial#tabs-2");
		} else {
			redirect(base_url()."index.php/geospasial#tabs-3");
		}
	}
	
	function ambildata($group){
		$no = $this->uri->segment(4,0);
		$no = ($no==0)?'':$no;
		$rs = $this->gis->ambildata($group,$no);
		
		$json = '{"wilayah": {';
		$json .= '"petak":[ ';
		foreach ($rs as $r) {
			$json .= '{';
			$json .= '"no":"'.$r->no.'",
				"title":"'.htmlspecialchars($r->title).'",
				"jenis":"'.htmlspecialchars($r->nama).'",
				"provinsi":"'.$r->provinsi.'",
				"kota":"'.htmlspecialchars($r->kota).'",
				"alamat":"'.htmlspecialchars($r->address).'",
				"nilai":"'.htmlspecialchars($r->nilai).'",
				"keterangan":"'.htmlspecialchars($r->ket).'",
				"x":"'.$r->x.'",
				"y":"'.$r->y.'"
			},';
		}
		$json = substr($json,0,strlen($json)-1);
		$json .= ']';
		
		$json .= '}}';
		echo $json;
	}
	
	function ambil_list($group){
		$rs = $this->gis->ambildata($group);
		$no=1;
		$html = '';
		 foreach ($rs as $r){
		   $html .= "<a onclick=\"peta_awal('petaku',".$group.",".$r->no.")\" style='cursor:pointer'>".$no.". ".$r->title." &nbsp; &nbsp; ".$r->address."<br></a>";
		   $no += 1;
		 }
		
		echo $html;
	}
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */