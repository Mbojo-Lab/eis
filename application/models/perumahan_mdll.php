<?php
class Perumahan_mdll extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->load->database();
    }
	
	function get_unit(){
        $this->db->order_by("unit_kerja", "ASC");
        return $this->db->get("unit_kerja");       
    }
	
	function getKegiatan(){
		$q = "SELECT id,nama
			  FROM kegiatan ORDER BY parent_id, no_urut";
		$rs = $this->db->query($q)->result();
		
		$html="";
		foreach ($rs as $r){
			
				$html .= "<option value=\"".$r->nama."\">".$r->nama."</option>";
			
		}
		return $html;
	}
	
	
	function simpan($data){
	
		$new = $this->db->query("SELECT id FROM anggaran_baru ORDER BY id DESC")->result_array();
		$newid = $new[0]['id']+1;		
		
		$sql[] = "INSERT INTO anggaran_baru (
		tahun, unit_kerja, kegiatan, volume, satuan, anggaran, provinsi, id
		) VALUES (
		'".$data['tahun']."','".$data['unit_kerja']."','".$data['id_keg']."','".$data['volume']."','".$data['satuan']."',
		'".$data['nilai']."','".$data['provinsi']."','$newid' )";
		
		foreach ($sql as $q)
			$rs = $this->db->query($q);
			
		return true;
	}
	
	function simpann($data){
		$new = $this->db->query("SELECT id FROM realisasi ORDER BY id DESC")->result_array();
		$newid = $new[0]['id']+1;		
		
		$sql[] = "INSERT INTO realisasi (
		tahun, unit_kerja, nm_keg, provinsi, kota, lokasi, x, y, no_kontrak, tgl_kontrak, durasi, tgl_mulai, tgl_akhir,
		tgl_act_mulai, tgl_act_akhir, prog_rencana, prog_realisasi, biaya_realisasi,bln_realisasi, keterangan, permasalahan, id
		) VALUES (
		'".$data['tahun']."','".$data['unit_kerja']."','".$data['id_keg']."','".$data['provinsi']."','".$data['nm_kota']."',
		'".$data['lokasi']."','".$data['x']."','".$data['y']."', '".$data['no_kontrak']."','".$data['tgl_kontrak']."','".$data['durasi']."',
		'".$data['tgl_mulai']."','".$data['tgl_akhir']."','".$data['tgl_act_mulai']."','".$data['tgl_act_akhir']."','".$data['prog_rencana']."',
		'".$data['prog_realisasi']."','".$data['biaya_realisasi']."','".$data['bln_realisasi']."','".$data['keterangan']."','".$data['permasalahan']."','$newid')";
		
		foreach ($sql as $q)
			$rs = $this->db->query($q);
			
		return true;
	}

	function newID(){
		$q = "SELECT * FROM kegiatan ORDER BY id DESC LIMIT 1";
		$rs = $this->db->query($q)->result_array();
		
		$newid=1;
		if ($rs){
			$newid = $rs[0]['id']+1;
		}
		return $newid;
	}
	
	
	function get_provinsi(){
        $this->db->order_by("nm_prov", "ASC");
        return $this->db->get("provinsi");       
    }
     
    function get_kota() {
        $this->db->order_by("nm_kota", "ASC");
        return $this->db->get("kota");       
    }
     
    function get_kota_by_provinsi($id) {
        $this->db->order_by("id", "ASC");
        $this->db->where("id_prov", $id);
        $query = $this->db->get("kota");
        if ($query->num_rows() > 0) return $query->result();             
    }

}
?>