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
	
	function getJmlEselon($bln, $thn){		
		$q = "SELECT no,jabatan,(jml_pria + jml_wanita) AS jml
			  FROM sdm_rekap_jab_jk
			  WHERE bulan='$bln' AND tahun='$thn'
			  ORDER BY no ASC";
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
	
	function getJmlPeg($bln=12){		
		$q = "SELECT SUM(jml_pria + jml_wanita) AS jml
			  FROM sdm_rekap_jab_jk
			  WHERE bulan='$bln'";
		$rs = $this->db->query($q)->result();
		
		
		return $rs[0]->jml;
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
	
	function getWeekDates($start=true){
		$year=date('Y');
		$week=date('W');
	    $from = date("Y-m-d", strtotime("{$year}-W{$week}-1")); //Returns the date of monday in week
	    $to = date("Y-m-d", strtotime("{$year}-W{$week}-5"));   //Returns the date of sunday in week
	 
	    if($start) {
	        return $from;
	    } else {
	        return $to;
	    }
	    //return "Week {$week} in {$year} is from {$from} to {$to}.";
	}
	
	function getAbsenM(){
		$q0 = "SELECT unitkerja FROM absensi
			  GROUP BY unitkerja
			  ORDER BY unitkerja ASC";
		$rs0 = $this->db->query($q0)->result();		
		
		$date1=$this->getWeekDates();
		//$date1='2012-12-01';
		$date2=$this->getWeekDates(false);
		
		$categoryArr=array();
		$jmlArr=array();
		foreach ($rs0  as $r0){
			$q = "SELECT tgl_absen, to_char(tgl_absen, 'Day') AS hari, COUNT(*) AS jml
				  FROM absensi
				  WHERE masuk NOT IN ('') AND unitkerja='".$r0->unitkerja."' AND tgl_absen BETWEEN '$date1' AND '$date2'
				  GROUP BY tgl_absen
				  ORDER BY tgl_absen ASC";
			$rs = $this->db->query($q)->result();		
			
			
			foreach ($rs as $r){
				$catArr[$r0->unitkerja][]=$r->hari;
				$jmlArr[$r0->unitkerja][]=$r->jml;				
			}
			$result[$r0->unitkerja][] = implode(",", $jmlArr[$r0->unitkerja]);
			$cat = "'".implode("','", $catArr[$r0->unitkerja])."'";
			
		}	  	
		
		$json = "["; 
		foreach ($result as $keys => $values){
			$json .= "{name: '".$keys."',data: [";
			foreach ($values as $key => $value){
				$json .= $value."]},";
			}
		}
		
		$json = substr($json,0,-1);
		$json .= "]"; 
		
		$result[]=$json;
		$result[]=$cat;
		return $result;
	
    }
	
	function getAbsenB(){
		$q0 = "SELECT unitkerja FROM absensi
			  GROUP BY unitkerja
			  ORDER BY unitkerja ASC";
		$rs0 = $this->db->query($q0)->result();		
		
		$date=date('Y');
		
		$categoryArr=array();
		$jmlArr=array();
		foreach ($rs0  as $r0){
			$q = "SELECT  to_char(tgl_absen, 'MM') AS bulan, COUNT(*) AS jml
				  FROM absensi
				  WHERE masuk NOT IN ('') AND unitkerja='".$r0->unitkerja."' AND to_char(tgl_absen, 'YYYY')= '".$date."'
				  GROUP BY to_char(tgl_absen,'MM')
				  ORDER BY to_char(tgl_absen,'MM') ASC";
			$rs = $this->db->query($q)->result();		
			
			
			foreach ($rs as $r){
				$catArr[$r0->unitkerja][]=$this->bulanInd($r->bulan);
				$jmlArr[$r0->unitkerja][]=$r->jml;				
			}
			$result[$r0->unitkerja][] = implode(",", $jmlArr[$r0->unitkerja]);
			$cat = "'".implode("','", $catArr[$r0->unitkerja])."'";
			
		}	  	
		
		$json = "["; 
		foreach ($result as $keys => $values){
			$json .= "{name: '".$keys."',data: [";
			foreach ($values as $key => $value){
				$json .= $value."]},";
			}
		}
		
		$json = substr($json,0,-1);
		$json .= "]"; 
		
		$result[]=$json;
		$result[]=$cat;
		return $result;
	
    }
	
	function getAbsenNew($tipe='h'){
		if ($tipe=="h"){
			$tgl = date('Y-m-d');
			$q0 = "AND tgl_absen = '$tgl' ";
		} else if($tipe=="m"){
			$tgl = date('Y-m-d');
			$week = date('W');
			$q0 = "AND EXTRACT(WEEK FROM TIMESTAMP '".$tgl."') = $week ";
		} else {
			$tgl = date('Y-m-d');
			$month = date('n');
			$q0= "AND EXTRACT(month FROM TIMESTAMP '".$tgl."') = $month ";
		}
			
		$q = "SELECT unitkerja,(SELECT COUNT(*) FROM absensi b WHERE masuk != '' AND a.unitkerja=b.unitkerja $q0) AS hadir,(SELECT COUNT(*) FROM absensi c WHERE masuk = '' AND a.unitkerja=c.unitkerja $q0) AS tidak_hadir,(SELECT COUNT(*) FROM absensi c WHERE masuk > '08:30:00' AND a.unitkerja=c.unitkerja $q0) AS terlambat
			  FROM absensi a ";		  
		
		$q .= "GROUP BY unitkerja ORDER BY unitkerja";
		$rs = $this->db->query($q)->result_array();
		
		return $rs;
	}
	
	function getAbsenList($unitkerja,$status){
		$q = "SELECT DISTINCT ON (nip) * FROM absensi WHERE unitkerja='$unitkerja' ";
		if ($status=='Tidak Hadir'){
			$q .= "AND masuk = '' ";
		} else if ($status=='Hadir'){
			$q .= "AND masuk != '' ";
		} else {
			$q .= "AND masuk > '08:30:00' ";
		}
		
		$tgl = date('Y-m-d');
		$q .= "AND tgl_absen = '$tgl' ";
			
		$q .= "ORDER BY nip, nama";
		$rs = $this->db->query($q)->result();
		return $rs;
	}
	
	function getJmlTot($bln, $thn){
		$q = "SELECT SUM(jml_pria + jml_wanita) AS tot
			  FROM sdm_rekap_jab_jk
			  WHERE bulan='$bln' AND tahun='$thn' ";
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
		$run = $this->db->delete('absensi', array('tgl_absen' => date('Y-m-d'))); 
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
	
	function getview_pensiun(){
		$thn1=date("Y");
		$thn2=date("Y")+1;
		$thn3=date("Y")+2;
		$thn4=date("Y")+3;
		$thn5=date("Y")+4;
		$html = '<table class="static2">
			<thead>
			<tr>
			  <th rowspan="3">NO</th>
			  <th rowspan="3">JABATAN</th>
			  <th colspan="8">&nbsp;</th>
			  <th colspan="2" rowspan="2" width="250">SISA AWAL '.$thn5.'</th>
			  <th rowspan="3">KETERANGAN</th>
			</tr>
			<tr>
			  <th colspan="2">'.$thn1.'</th>
			  <th colspan="2">'.$thn2.'</th>
			  <th colspan="2">'.$thn3.'</th>
			  <th colspan="2">'.$thn4.'</th>
			</tr>
			<tr>
			  <th>SISA</th>
			  <th>PENSIUN</th>
			  <th>SISA</th>
			  <th>PENSIUN</th>
			  <th>SISA</th>
			  <th>PENSIUN</th>
			  <th>SISA</th>
			  <th>PENSIUN</th>
			  <th>JUMLAH</th>
			  <th>% *)</th>
			</tr>
			</thead>
			<tbody>';
			
		$q = "SELECT DISTINCT ON (jabatan) *
			  FROM sdm_rekap_jab_jk WHERE jabatan != 'Honorer' ";
		$rs = $this->db->query($q)->result();
		$i=1;
		foreach ($rs as $r){
			$html .= '<tr>
			  <td>'.$i.'</td>
			  <td>'.$r->jabatan.'</td>
			  <td>1</td>
			  <td>2</td>
			  <td>3</td>
			  <td>4</td>
			  <td>5</td>
			  <td>6</td>
			  <td>7</td>
			  <td>8</td>
			  <td>9</td>
			  <td>10</td>';
			  
			  if ($i==1){
			  	$html .= '<td rowspan="6">
				  Usia pensiun :<br>
				  - Esel I & II : 60 th.<br>
				  - Lainnya : 56 th.<br>
				  - *) Persentase thdp. <br>
				  &nbsp; tahun '.$thn1.'
				  </td>';	
			  }
			  
			$html .= '</tr>';		
			$i++;		
		}
			
			$html .= '<tr>
			  <td colspan="2">JUMLAH PNS</td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			  <td></td>
			</tr>
			</tbody>
			</table>';
			
		return $html;	
	}
	
	function getview_pensiun2($bln, $thn){		
		$html = '<table class="static2">
			<thead>
			<tr>
			  <th rowspan="2">NO</th>
			  <th rowspan="2">JABATAN</th>			  
			  <th colspan="2">'.$this->bulanInd($bln)." ".$thn.'</th>
			  <th rowspan="2">KETERANGAN</th>
			</tr>
			<tr>
			  <th>SISA</th>
			  <th>PENSIUN</th>		  
			</tr>
			</thead>
			<tbody>';
			
		$q = "SELECT DISTINCT ON (jabatan) *
			  FROM sdm_rekap_jab_jk WHERE jabatan != 'Honorer' 
			  AND bulan='$bln' AND tahun='$thn' ";
		$rs = $this->db->query($q)->result();
		$i=1;
		$totsisa=0;
		$totpensiun=0;
		if ($rs){	
		
			foreach ($rs as $r){
				$html .= '<tr>
				  <td align="center">'.$i.'</td>
				  <td>'.$r->jabatan.'</td>
				  <td align="center">'.$r->sisa.'</td>
				  <td align="center">'.$r->pensiun.'</td>';
				  
				  if ($i==1){
				  	$html .= '<td rowspan="6">
					  Usia pensiun :<br>
					  - Esel I & II : 60 th.<br>
					  - Lainnya : 56 th.<br>
					  </td>';	
				  }
				  
				$html .= '</tr>';		
				$i++;
				$totsisa += $r->sisa;
				$totpensiun += $r->pensiun;		
			}
		
		} else {
			$q = "SELECT DISTINCT ON (jabatan) *
			  FROM sdm_rekap_jab_jk WHERE jabatan != 'Honorer' 
			  ";
			$rs = $this->db->query($q)->result();
			$i=1;
			$totsisa=0;
			$totpensiun=0;
		
			foreach ($rs as $r){
				$html .= '<tr>
				  <td align="center">'.$i.'</td>
				  <td>'.$r->jabatan.'</td>
				  <td align="center">0</td>
				  <td align="center">0</td>';
				  
				  if ($i==1){
				  	$html .= '<td rowspan="6">
					  Usia pensiun :<br>
					  - Esel I & II : 60 th.<br>
					  - Lainnya : 56 th.<br>
					  </td>';	
				  }
				  
				$html .= '</tr>';		
				$i++;
			}
		}
			
			$html .= '<tr>
			  <td align="center" colspan="2"><b>JUMLAH PNS</b></td>
			  <td align="center"><b>'.$totsisa.'</b></td>
			  <td align="center"><b>'.$totpensiun.'</b></td>
			</tr>
			</tbody>
			</table><br>&nbsp;';
			
		return $html;	
	}
	
	function getRencanaPensiun(){
		$q = "SELECT DISTINCT ON (unitkerja) *
			  FROM absensi";
		$rs = $this->db->query($q)->result();
		
		
	}
	
	
	function bulanInd($sDate){
		switch($sDate) {
			case '01': $monthName="Januari"; break;
			case '02': $monthName="Febuari"; break;
			case '03': $monthName="Maret"; break;
			case '04': $monthName="April"; break;
			case '05': $monthName="Mei"; break;
			case '06': $monthName="Juni"; break;
			case '07': $monthName="Juli"; break;
			case '08': $monthName="Agustus"; break;
			case '09': $monthName="September"; break;
			case '10': $monthName="Oktober"; break;
			case '11': $monthName="Nopember"; break;
			case '12': $monthName="Desember"; break;
		}
		return $monthName;
	}
	
}
?>