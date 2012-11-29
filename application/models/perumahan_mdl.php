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
			  WHERE parent_id=0
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
		/*$q = "SELECT id,nama 
			  FROM kegiatan WHERE parent_id=0 ";
		$rs = $this->db->query($q)->result();
		*/
		$html = '<table id="datatable_peru" style="display:none"><thead><tr><th></th>';
		$html .= '<th>Target</th><th>Realisasi</th>';
		/*
		foreach ($rs as $r){
			$html .= '<th>'.$r->nama.'</th>';
		}*/
		
		$html .= '</tr></thead><tbody>';
		
		$q = "SELECT tahun,SUM(tg_anggaran) AS target, SUM(re_anggaran) AS realisasi 
			  FROM anggaran GROUP BY tahun ORDER BY tahun";
		$rs = $this->db->query($q)->result();
		
		foreach ($rs as $r){
			$html .= '<tr><th>'.$r->tahun.'</th><td>'.$r->target.'</td><td>'.$r->realisasi.'</td></tr>';
		}
		
		$html .= '</tbody></table>';
		
		return $html;
		
	}
	
	function getKegiatan(){
		$q = "SELECT id,nama
			  FROM kegiatan ORDER BY parent_id, no_urut";
		$rs = $this->db->query($q)->result();
		
		$html="";
		foreach ($rs as $r){
			if (! $this->cekChild($r->id)){
				$html .= "<option value=\"".$r->id."\">".$r->nama."</option>";
			}
		}
		return $html;
	}
	
	function getDetail($data){
		//$rs = $this->db->get_where('anggaran', $where)->result_array();
		
		$q = "SELECT *
			  FROM anggaran a LEFT JOIN gis b ON a.id_keg = b.id_gis_group WHERE tahun='".$data['tahun']."' AND id_keg=".$data['id_keg']."";
		$rs = $this->db->query($q)->result_array();
		
		return $rs[0];
	}
	
	function simpan($data){
		
		$sql[]="UPDATE anggaran SET 
				target='".$data['target']."', 
				tg_anggaran='".$data['tg_anggaran']."',
				realisasi='".$data['realisasi']."', 
				re_anggaran='".$data['re_anggaran']."' 
				WHERE id_keg=".$data['id_keg']." AND tahun='".$data['tahun']."'"; 
		
		
		$new = $this->db->query("SELECT id FROM anggaran ORDER BY id DESC")->result_array();
		$newid = $new[0]['id']+1;		
		
		$sql[] = "INSERT INTO anggaran (
		id,target,tg_anggaran,realisasi,re_anggaran,tahun,id_keg
		) VALUES (
		'$newid','".$data['target']."', '".$data['tg_anggaran']."','".$data['realisasi']."', '".$data['re_anggaran']."','".$data['tahun']."', '".$data['id_keg']."' )";
		
		
		$sql[]="UPDATE gis SET 
				address='".$data['address']."', 
				x='".$data['x']."',
				y='".$data['y']."'
				WHERE id_gis_group=".$data['id_keg'].""; 
		
		$new = $this->db->query("SELECT no FROM gis ORDER BY no DESC")->result_array();
		$newno = $new[0]['no']+1;
		
		$sql[] = "INSERT INTO gis ( no,title,address,x,y,id_gis_group
		) VALUES (
		'$newno', '".$data['id_keg']."', '".$data['address']."', '".$data['x']."','".$data['y']."', '".$data['id_keg']."' )";
		
		foreach ($sql as $q)
			$rs = $this->db->query($q);
			
		return true;
	}
	
	function cekAnak($id){
		$q = "SELECT * FROM kegiatan WHERE parent_id = '$id'";
		$rs = $this->db->query($q)->result_array();
		
		if ($rs){
			return true;
		} else{
			return false;
		}
	}
	
	function cctree($parent){		
		$q = "SELECT * FROM kegiatan WHERE parent_id = '$parent' ORDER BY no_urut";
		$rs = $this->db->query($q)->result_array();
		
		$jml=count($rs);
		$no=1;
		$json = "[";
		if ($rs):
			
			foreach ($rs as $r):
				$json .= '{
						"id":"'.$r['id'].'",
						"text":"'.$r['no']." ".$r['nama'].'"';
						
				/*if ($r['posisi']=="parent"){ 
					$json .= ',"state":"closed"';
				}*/		
				
				if ($this->cekAnak($r['id'])){	
					$json .= ',"children":';
					$json .= $this->cctree($r['id']);
				}
				
				$json .= ' }';
				if ($no!=$jml){$json .= ",";}	  
				$no += 1;
			endforeach;
		endif;
		$json .= "]";
		return $json;
	}
	
	function tree(){
		$q = "SELECT * FROM kegiatan WHERE parent_id = '0' ORDER BY no_urut ";
		$rs = $this->db->query($q)->result_array();
		
		$jml=count($rs);
		$no=1;
		$json = "[";
		if ($rs):
			
			foreach ($rs as $r):
				$json .= '{
						"id":"'.$r['id'].'",
						"text":"'.$r['no']." ".$r['nama'].'"';
						
				/*if ($r['posisi']=="parent"){ 
					$json .= ',"state":"closed"';
				}*/
				
				if ($this->cekAnak($r['id'])){	
					$json .= ',"children":';
					$json .= $this->cctree($r['id']);
				}
				
				$json .= ' }';
				if ($no!=$jml){$json .= ",";}	  
				$no += 1;
			endforeach;
		endif;
		$json .= "]";
		
		return $json;
		
	}

	function getKeg($id){
		$q = "SELECT * FROM kegiatan WHERE id='$id' ";
		$rs = $this->db->query($q)->result_array();
		
		return $rs[0];
	}

}
?>