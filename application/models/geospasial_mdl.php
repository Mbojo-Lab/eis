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
			  INNER JOIN gis_group b ON a.id_gis_group=b.id_gis_group 
			  WHERE a.id_gis_group='$group' 
			  AND a.no LIKE '%$no%'";
		
		$rs = $this->db->query($q)->result();		
		return $rs;
    }
}
?>