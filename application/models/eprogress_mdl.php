<?php
class Eprogress_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->load->database();
    }
    
	
	function pie(){
		$q = "SELECT * FROM realisasi
			   ORDER BY id ASC";
		$rs = $this->db->query($q)->result();
		
		return $rs;
    }
	
	function tampil_progres($ket){
		if ($ket=="Telat"){
			$q = "SELECT * FROM realisasi
				  WHERE prog_rencana>prog_realisasi
			   	  ORDER BY id ASC";		
		} else if ($ket=="Sesuai"){
			$q = "SELECT * FROM realisasi
				  WHERE prog_rencana=prog_realisasi
			   	  ORDER BY id ASC";
		} else {
			$q = "SELECT * FROM realisasi
				  WHERE prog_rencana<prog_realisasi
			   	  ORDER BY id ASC";
		}
		
		$rs = $this->db->query($q)->result();
		
		$html = '<table class="static2">
        <tr>
          <th rowspan="2">No.</th>
          <th rowspan="2">LOKASI</th>
          <th rowspan="2">DATA KONTRAK</th>
          <th colspan="2">PROGRES KEGIATAN</th>
	      <th rowspan="2">KEGIATAN</th>
          <th rowspan="2">PERMASALAHAN DAN TINDAK LANJUT</th>
		  
        </tr>
		<tr>
			<th>Persentase Progress</th>
			<th>Nilai Progress</th>
		</tr>
		';
         
        $deviasi=0;
		foreach($rs as $r): 
$a = $r->prog_rencana;
$b = $r->prog_realisasi;
$deviasi = $a - $b;         
		$html .= '<tr><td align="left">';
		  
		  	 	  $html .= $r->id;
		    		    
			$html .= '</td><td style="width:290px">';
		   
		      	  $html .= $r->lokasi;
		    	  $html .= '<br>No Kontrak : ';
				  $html .= $r->no_kontrak;
				  $html .= '<br>Koordinat : ';
				  $html .= $r->x;
				  $html .= ' | ';
				  $html .= $r->y;
			$html .= '</td><td>';
			   	  $html .= 'Tgl Kontrak : ';
				  $html .= $r->tgl_kontrak;
				  $html .= '<br>Mulai : ';
				  $html .= $r->tgl_mulai;
				  $html .= '<br>Berakhir : ';
				  $html .= $r->tgl_akhir;
				  $html .= '<br>Durasi: ';
				  $html .= $r->durasi;
			$html .= '</td><td colspan="1">';
				  $html .= 'Rencana : ';
				  $html .= $r->prog_rencana;
				  $html .= ' %';
				  $html .= '<br>Realisasi : ';
				  $html .= $r->prog_realisasi;
				  $html .= ' %';
				  $html .= '<br>Deviasi : ';
				  $html .= $deviasi;
				  $html .= ' %';
			$html .= '</td><td colspan="1">';	  
				  $html .= 'Nilai Rencana : ';
				  $html .= $r->nilai_rencana;
				  $html .= '<br>Nilai Realisasi : ';
				  $html .= $r->nilai_realisasi;
			$html .= '</td><td align="center" style="width:100px">';
				  $html .= $r->keterangan;
			$html .= '</td><td align="center" style="width:150px">';
				  $html .= $r->permasalahan;
			
						
			$html .= '</td></tr>';
			
		  
        endforeach; 
				
        $html .= '</table>';
		
		return $html;
    }
	
}
?>