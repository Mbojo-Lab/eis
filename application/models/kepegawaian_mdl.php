<?php
class Kepegawaian_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->load->database();
    }
	
	function getRekapUK(){
		$q = "SELECT *
			  FROM sdm_rekap_unit_stat
			  ORDER BY unit_kerja";
		$rs = $this->db->query($q)->result();
		
		return $rs;
	}
	
	function getRekapJJK(){
		$q = "SELECT *
			  FROM sdm_rekap_jab_jk
			  ORDER BY jabatan";
		$rs = $this->db->query($q)->result();
		
		return $rs;
	}
    
    function getJmlBagian(){
		$q = "SELECT no, unit_kerja, (jml_pns + jml_honor) AS jml 
			  FROM sdm_rekap_unit_stat
			  ORDER BY no";
		$rs = $this->db->query($q)->result();
		
		return $rs;
    }
	
	function getJmlEselon(){
		$q = "SELECT no,jabatan,(jml_pria + jml_wanita) AS jml
			  FROM sdm_rekap_jab_jk
			  ORDER BY jabatan ASC";
		$rs = $this->db->query($q)->result();
		$rs0 = $this->db->query($q);
		$html = '<table id="datatable" style="display:none"><thead><tr><th></th><th>Jumlah</th></tr></thead><tbody>';
		
		foreach ($rs as $r){
			$html .= '<tr><th>'.$r->jabatan.'</th>';
			$html .= '<td>'.$r->jml.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
    }
	
	function getAbsen($tipe='h'){
		$q = "SELECT jabatan,SUM(hadir) AS hadir,SUM(tidak_hadir) AS tidak_hadir,SUM(terlambat) AS terlambat
			  FROM absen ";
		if ($tipe=="h"){
			$tgl = date('Y-m-d');
			$q .= "WHERE tgl = '$tgl' ";
		} else if($tipe=="m"){
			$tgl = date('Y-m-d');
			$week = date('W');
			$q .= "WHERE EXTRACT(WEEK FROM TIMESTAMP '".$tgl."') = $week ";
		} else {
			$tgl = date('Y-m-d');
			$month = date('n');
			$q .= "WHERE EXTRACT(month FROM TIMESTAMP '".$tgl."') = $month ";
		}	  
		
		$q .= "GROUP BY jabatan ORDER BY jabatan";
		$rs = $this->db->query($q)->result_array();
		
		return $rs;
	}
	
	function getAbsenNew($tipe='h'){
		$q = "SELECT unitkerja,(SELECT COUNT(*) FROM absensi b WHERE masuk != '' AND a.unitkerja=b.unitkerja) AS hadir,(SELECT COUNT(*) FROM absensi c WHERE masuk = '' AND a.unitkerja=c.unitkerja) AS tidak_hadir,(SELECT COUNT(*) FROM absensi c WHERE masuk > '08:30:00' AND a.unitkerja=c.unitkerja) AS terlambat
			  FROM absensi a ";
		if ($tipe=="h"){
			$tgl = date('Y-m-d');
			$q .= "WHERE tgl_absen = '$tgl' ";
		} else if($tipe=="m"){
			$tgl = date('Y-m-d');
			$week = date('W');
			$q .= "WHERE EXTRACT(WEEK FROM TIMESTAMP '".$tgl."') = $week ";
		} else {
			$tgl = date('Y-m-d');
			$month = date('n');
			$q .= "WHERE EXTRACT(month FROM TIMESTAMP '".$tgl."') = $month ";
		}	  
		
		$q .= "GROUP BY unitkerja ORDER BY unitkerja";
		$rs = $this->db->query($q)->result_array();
		
		return $rs;
	}
	
	function getJmlTot(){
		$q = "SELECT SUM(jml_pria + jml_wanita) AS tot
			  FROM sdm_rekap_jab_jk";
		$rs = $this->db->query($q)->result_array();
		
		return $rs[0]['tot'];
    }
	
	function objectsIntoArray($arrObjData, $arrSkipIndices = array())
{
		$arrData = array();
	   
		// if input is object, convert into array
		if (is_object($arrObjData)) {
			$arrObjData = get_object_vars($arrObjData);
		}
	   
		if (is_array($arrObjData)) {
			foreach ($arrObjData as $index => $value) {
				if (is_object($value) || is_array($value)) {
					$value = $this->objectsIntoArray($value, $arrSkipIndices); // recursive call
				}
				if (in_array($index, $arrSkipIndices)) {
					continue;
				}
				$arrData[$index] = $value;
			}
		}
		return $arrData;
	}

	
	function getxml(){
		$xmlUrl = "http://dev.kemenpera.go.id/absensi/index.php/laporan/xml"; // XML feed file/URL
		$xmlStr = file_get_contents($xmlUrl);
		$xmlObj = simplexml_load_string($xmlStr);
		$arrXml = $this->objectsIntoArray($xmlObj);
		
		$arrtgl = array( 'tgl_absen' => date('Y-m-d'));
		foreach ($arrXml['detail'] as $r1){
			foreach ($r1 as $r2){
				$r3=array_merge($r2, $arrtgl);
				$run = $this->db->insert('absensi', $r3); 	 
				//$this->db->where('tgl_absen', null);
				
				//$this->db->update('absensi', $arrtgl);
			}
		}	
		
		return $arrXml;
	}
	
	function ubah($data){
		$this->db->where('no', $data['no']);
		$this->db->update('sdm_rekap_unit_stat', $data);
		
		
		/*$q = "UPDATE sdm_rekap_unit_stat SET
			  jml_pns='".$data['jml_pns']."', 
			  jml_honor='".$data['jml_honor']."'
			  WHERE no='".$data['no']."'";
		$rs = $this->db->query($q);
		
		return $q;*/
	}
	
	function ubah2($data){
		$this->db->where('no', $data['no']);
		$this->db->update('sdm_rekap_jab_jk', $data);
		
		
		/*$q = "UPDATE sdm_rekap_unit_stat SET
			  jml_pns='".$data['jml_pns']."', 
			  jml_honor='".$data['jml_honor']."'
			  WHERE no='".$data['no']."'";
		$rs = $this->db->query($q);
		
		return $q;*/
	}
	
	function getAbsenList($unitkerja,$status){
		$q = "SELECT * FROM absensi WHERE unitkerja='$unitkerja' ";
		if ($status=='Tidak Hadir'){
			$q .= "AND masuk = '' ";
		} else if ($status=='Hadir'){
			$q .= "AND masuk != '' ";
		} else {
			$q .= "AND masuk > '08:30:00' ";
		}
		$q .= "ORDER BY nip, nama";
		$rs = $this->db->query($q)->result();
		return $rs;
	}
	
}
?>