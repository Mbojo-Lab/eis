<?php
class Perumahan_mdl extends CI_Model {

    var $title   = '';
    var $content = '';
    var $date    = '';

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->load->database();
    }
    
    function tampil($tahun){
		$q = "SELECT * FROM kegiatan
			  WHERE parent_id='' 
			  ORDER BY no_urut ASC";
		$rs = $this->db->query($q)->result();
		
		$html = '<table class="static2">
        <tr>
          <th rowspan="4">No.</th>
          <th rowspan="4">PROGRAM/KEGIATAN PRIORITAS</th>
          <th rowspan="4">SATUAN</th>
          <th rowspan="4">SASARAN<br>RP JMN<br>2010-2014</th>
          <th colspan="4">TAHUN '.$tahun.' </th>          
        </tr>
        <tr>
          <th colspan="2">DIPA</th>
          <th colspan="2">CAPAIAN</th>
        </tr>
        <tr>
          <th rowspan="2">Target</th>
          <th>Anggaran</th>
          <th rowspan="2">Realisasi</th>
          <th>Anggaran</th>
        </tr>
        <tr>
          <th>(Rp. Milyar)</th>
          <th>(Rp. Milyar)</th>
        </tr>';
          
        $totNama='';
		$totTgAnggaran=0;
		$totReAnggaran='';
		$grandtotTgAnggaran=0;
		$grandtotReAnggaran='';
		foreach($rs as $r): 
        	$html .= '<tr><td align="center">';
		  
		  	if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->no."</b>";
		    } else { 
		  	  $html .= $r->no;
		    } 
		    
			$html .= '</td><td>';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->nama."</b>";
		    } else { 
		  	  $html .= $r->nama;
		    }
			
			$html .= '</td><td align="center">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->sat."</b>";
		    } else { 
		  	  $html .= $r->sat;
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b></b>";
		    } else { 
		  	  $html .= "";
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>"."</b>";
		    } else { 
		  	  $html .= '';
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>"."</b>";
		    } else { 
		  	  $html .= '';
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>"."</b>";
		    } else { 
		  	  $html .= '';
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>"."</b>";
		    } else { 
		  	  $html .= '';
		    }						
			
			$html .= '</td></tr>';
			
			$html .= $this->tampilsub($r->id, $tahun);	
			
			$totTgAnggaran = $this->getNilai('tg_anggaran',$r->id,$tahun,2);
			$totReAnggaran = $this->getNilai('re_anggaran',$r->id,$tahun,2);
			$html .= '<tr>
						  <th colspan="2">TOTAL ALOKASI KEMENPERA ('.$r->nama.')</th>
						  <th></th>
						  <th></th>
						  <th></th>
						  <th>'.number_format($totTgAnggaran,2).'</th>
						  <th></th>
						  <th>'.number_format($totReAnggaran,2).'</th>
					  </tr>';
          $totNama .= $r->nama." + ";
		  $grandtotTgAnggaran += $totTgAnggaran;
		  $grandtotReAnggaran += $totReAnggaran;
		  
        endforeach; 
		
		$html .= '<tr>
					  <th colspan="2">TOTAL ALOKASI KEMENPERA ('.substr($totNama,0,-3).')</th>
					  <th></th>
					  <th></th>
					  <th></th>
					  <th>'.number_format($grandtotTgAnggaran,2).'</th>
					  <th></th>
					  <th>'.number_format($grandtotReAnggaran,2).'</th>
				  </tr>';
		
        $html .= '</table>';
		
		return $html;
    }
	
	function tampilsub($parent_id='', $tahun){
		$q = "SELECT * FROM kegiatan a 
			  WHERE parent_id='$parent_id'
			  ORDER BY no_urut ASC";
		$rs = $this->db->query($q)->result();
		
		$html='';
		if ($parent_id != ''){
        foreach($rs as $r): 
        	$html .= '<tr><td align="center">';
		  
		  	if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->no."</b>";
		    } else { 
		  	  $html .= $r->no;
		    } 
		    
			$html .= '</td><td>';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->nama."</b>";
		    } else { 
		  	  $html .= $r->nama;
		    }
			
			$html .= '</td><td align="center">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->sat."</b>";
		    } else { 
		  	  $html .= $r->sat;
		    }
			
			$html .= '</td><td align="right">';
		   
		   
		   if ($r->sasaran != ''){
			   $r->sasaran=number_format($r->sasaran);
		   }
			
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$r->sasaran."</b>";
		    } else { 
		  	  $html .= $r->sasaran;
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".number_format($this->getNilai('target',$r->id,$tahun,0))."</b>";
		    } else { 
		  	  $html .= number_format($this->getNilai('target',$r->id,$tahun,0));
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".number_format($this->getNilai('tg_anggaran',$r->id,$tahun,2),2)."</b>";
		    } else { 
		  	  $html .= number_format($this->getNilai('tg_anggaran',$r->id,$tahun,2),2);
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".number_format($this->getNilai('realisasi',$r->id,$tahun,0))."</b>";
		    } else { 
		  	  $html .= number_format($this->getNilai('realisasi',$r->id,$tahun,0));
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".number_format($this->getNilai('re_anggaran',$r->id,$tahun,2),2)."</b>";
		    } else { 
		  	  $html .= number_format($this->getNilai('re_anggaran',$r->id,$tahun,2),2);
		    }
			
			$html .= '</td></tr>';
			
			$html .= $this->tampilsub($r->id, $tahun);	
          
        endforeach; 
		}
		
		return $html;
    }
	
	function getNilai($kolom, $id_keg, $tahun, $dec){
		$cekChild = $this->cekChild($id_keg);	
		
		if ($cekChild){
			$getChild=$this->getChild($id_keg);
			$child_id = substr($getChild,0,-1);	
			$q = "SELECT SUM($kolom) AS $kolom
			      FROM kegiatan a 
				  LEFT JOIN anggaran b ON b.id_keg=a.id 
				  WHERE a.id IN ($child_id) AND tahun='$tahun' ";
			$rs = $this->db->query($q)->result();

			if ($rs){
				foreach ($rs as $r){ 
					//return number_format($r->$kolom,$dec);					
					return $r->$kolom;					
				}
			}
		} else {
			$q = "SELECT * FROM anggaran 
				  WHERE id_keg='$id_keg' AND tahun='$tahun' ";
			$rs = $this->db->query($q)->result();
			if ($rs){
				foreach ($rs as $r){ 
					//return number_format($r->$kolom,$dec);
					return $r->$kolom;					
				}
			}
		}
	
	}
		
	function cekChild($id){
		$q = "SELECT * FROM kegiatan a 
			  WHERE parent_id='$id'";
		$rs = $this->db->query($q);	  
		if ($rs->num_rows() > 0)
			return true;
		else
			return false;
	}
	
	function getChild($parent_id){
		$q = "SELECT id FROM kegiatan a 
			  WHERE parent_id='$parent_id'";
		$rs = $this->db->query($q)->result();	  
		$getChild = "";
		foreach ($rs as $r){			
			$child_id = $r->id;
			if ($this->cekChild($child_id)){
				 $getChild .= $child_id.",".$this->getChild($child_id);
			} else {
				$getChild .= $child_id.",";
			}	 
			
		}
		
		return $getChild;
	}
	
	function chartBar(){
		$q = "SELECT id,nama 
			  FROM kegiatan WHERE parent_id='' ";
		$rs = $this->db->query($q)->result();
		
		$html = '<table id="datatable" style="display:none"><thead><tr><th></th>';
		
		foreach ($rs as $r){
			$html .= '<th>'.$r->nama.'</th>';
		}
		
		$html .= '</tr></thead><tbody>';
		
		$q = "SELECT tahun,SUM(tg_anggaran) AS target, SUM(re_anggaran) AS realisasi 
			  FROM anggaran  GROUP BY tahun";
		$rs = $this->db->query($q)->result();
		
		foreach ($rs as $r){
			$html .= '<tr><th>'.$r->tahun.'</th><td>'.$r->target.'</td><td>'.$r->realisasi.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
		
	}

}
?>