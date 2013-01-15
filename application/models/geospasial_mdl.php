<?php
class Geospasial_mdl extends CI_Model {

    function __construct(){
        // Call the Model constructor
        parent::__construct();	
		$this->load->database();
    }
    
    function ambildata($group,$no=''){		
		$q = "SELECT *
			  FROM gis a
			  INNER JOIN kegiatan b ON a.id_gis_group=b.id
			  WHERE a.id_gis_group='$group' ";
		if ($no!=""){			
			$q .= "AND a.no LIKE '%$no%'";
		}
			  
		
		$rs = $this->db->query($q)->result();		
		return $rs;
    }
	
	function prov(){
		$q = "SELECT * FROM provinsi ";
		$rs = $this->db->query($q)->result();
		
		return $rs;		
	}
	
	function gis($prov='',$filter=''){		
		$q = "SELECT *
			  FROM realisasi a
			  INNER JOIN kegiatan b ON b.nama=a.nm_keg
			  LEFT JOIN provinsi c ON c.id = a.provinsi
			  WHERE status='geo' ";
			  
		if ($prov != ""){
			$q .= "AND provinsi='$prov' ";
		}
		
		if ($filter != ""){
			$filter = implode("','", $filter);
			$q .= "AND kategori  IN ('$filter') ";
		}
		
		$rs = $this->db->query($q)->result();		
		
		$html = '';    
	    $no=1;foreach ($rs as $r){
			$html .= '<tr class="gradeX">
				<td align="center">'.$no.'</td>
				<td>'.$r->kategori.'</td>
				<td>'.$r->nama.'</td>
				<td>'.$r->lokasi.'</td>
				<td>'.$r->kota.'</td>
				<td>'.$r->nm_prov.'</td>
			</tr>';
	    	$no +=1;
		}
		
		return $html;
    }
}
?>