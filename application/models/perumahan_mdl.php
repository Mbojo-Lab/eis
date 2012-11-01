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
    
    function tampil($tahun='2012'){
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
          <th colspan="4">TAHUN 2012</th>          
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
		  	  $html .= "<b>".number_format($r->sasaran)."</b>";
		    } else { 
		  	  $html .= number_format($r->sasaran);
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
          
        endforeach; 
		
        $html .= '</table>';
		
		return $html;
    }
	
	function tampilsub($parent_id='', $tahun='2012'){
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
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".number_format($r->sasaran)."</b>";
		    } else { 
		  	  $html .= number_format($r->sasaran);
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$this->getNilai('target',$r->id,$tahun)."</b>";
		    } else { 
		  	  $html .= $this->getNilai('target',$r->id,$tahun);
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$this->getNilai('tg_anggaran',$r->id,$tahun)."</b>";
		    } else { 
		  	  $html .= $this->getNilai('tg_anggaran',$r->id,$tahun);
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$this->getNilai('realisasi',$r->id,$tahun)."</b>";
		    } else { 
		  	  $html .= $this->getNilai('realisasi',$r->id,$tahun);
		    }
			
			$html .= '</td><td align="right">';
		   
		    if ($r->font=='bold'){ 
		  	  $html .= "<b>".$this->getNilai('re_anggaran',$r->id,$tahun)."</b>";
		    } else { 
		  	  $html .= $this->getNilai('re_anggaran',$r->id,$tahun);
		    }
			
			$html .= '</td></tr>';
			
			$html .= $this->tampilsub($r->id, $tahun);	
          
        endforeach; 
		}
		
		return $html;
    }
	
	function getNilai($kolom, $id_keg, $tahun){
		$q = "SELECT * FROM anggaran 
			  WHERE id_keg='$id_keg' AND tahun='$tahun' ";
		$rs = $this->db->query($q)->result();
		if ($rs){
			foreach ($rs as $r){ 
				return number_format($r->$kolom,2);
			}
		}
	
	}

    function insert_entry(){
        $this->title   = $_POST['title']; // please read the below note
        $this->content = $_POST['content'];
        $this->date    = time();

        $this->db->insert('entries', $this);
    }

    function update_entry(){
        $this->title   = $_POST['title'];
        $this->content = $_POST['content'];
        $this->date    = time();

        $this->db->update('entries', $this, array('id' => $_POST['id']));
    }

}
?>