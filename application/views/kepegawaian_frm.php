<?php 
/**
 * JqGrid PHP Component
 *
 * @author Afnan Zari <azghanvi@gmail.com> - http://azgtech.wordpress.com
 * @version 1.0
 * @todo: footer summary, grouping
 * @license: see license.txt included in package
 */
?>
<?php
error_reporting(E_ALL & ~E_NOTICE);

$conn = mysql_connect("localhost", "root", "");
mysql_select_db("eis");

// set your db encoding -- for ascent chars (if required)
mysql_query("SET NAMES 'utf8'");

include(base_url()."assets/files/jqgrid_dist.php");

// you can customize your own columns ...

$col = array();
$col["title"] = "Id"; // caption of column
$col["name"] = "mc_id"; // grid column name, must be exactly same as returned column-name from sql (tablefield or field-alias) 
$col["width"] = "5";
$cols[] = $col;	

$col = array();
$col["title"] = "Machine";
$col["name"] = "mc_name";
$col["width"] = "15";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

$cols[] = $col;

$col = array();
$col["title"] = "Merk";
$col["name"] = "merk";
$col["width"] = "23";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

$cols[] = $col;

$col = array();
$col["title"] = "Type";
$col["name"] = "type";
$col["width"] = "10";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

$cols[] = $col;

$col = array();
$col["title"] = "Serial Number";
$col["name"] = "sn";
$col["width"] = "20";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

$cols[] = $col;

$col = array();
$col["title"] = "Status";
$col["name"] = "status";
$col["width"] = "10";
$col["editable"] = true;
$col["edittype"] = "checkbox"; // render as checkbox
$col["editoptions"] = array("value"=>"Sewa:Beli:Pinjam"); // with these values "checked_value:unchecked_value"
$col["edittype"] = "select"; // render as select
$col["editoptions"] = array("value"=>'Sewa:Sewa;Beli:Beli;Pinjam:Pinjam');// with these values "key:value;key:value;key:value"
$cols[] = $col;

/*$col = array();
$col["title"] = "Status";
$col["name"] = "status";
$col["width"] = "20";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

$cols[] = $col;*/

$col = array();
$col["title"] = "Keterangan";
$col["name"] = "notes";
$col["width"] = "30";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

$col = array();
$col["title"] = "Flag Import";
$col["name"] = "mc_flag_imp";
$col["width"] = "10";
$col["editable"] = true;
$col["edittype"] = "checkbox"; // render as checkbox
$col["editoptions"] = array("value"=>"L:I"); // with these values "checked_value:unchecked_value"
$col["edittype"] = "select"; // render as select
$col["editoptions"] = array("value"=>'L:Local;I:Import'); // with these values "key:value;key:value;key:value"
$cols[] = $col;

$col = array();
$col["title"] = "Qty";
$col["name"] = "qty";
$col["width"] = "30";
$col["editable"] = true; // this column is not editable
$col["align"] = "left"; // this column is not editable
$col["search"] = true; // this column is not searchable

# $col["formatter"] = "image"; // format as image -- if data is image url e.g. http://<domain>/test.jpg
# $col["formatoptions"] = array("width"=>'20',"height"=>'30'); // image width / height etc

/*$col = array();
$col["title"] = "Date";
$col["name"] = "invdate"; 
$col["width"] = "50";
$col["editable"] = true; // this column is editable
$col["editoptions"] = array("size"=>20); // with default display of textbox with size 20
$col["editrules"] = array("required"=>true, "edithidden"=>true); // and is required
$col["hidden"] = true;

$col["formatter"] = "date"; // format as date
// $col["formatoptions"] = array("srcformat"=>'Y-m-d',"newformat"=>'d/m/Y'); // @todo: format as date, not working with editing

$cols[] = $col;*/
		


$g = new jqgrid();

// $grid["url"] = ""; // your paramterized URL -- defaults to REQUEST_URI
$grid["rowNum"] = 10; // by default 20
$grid["sortname"] = 'mc_id'; // by default sort grid by this field
$grid["sortorder"] = "desc"; // ASC or DESC
$grid["caption"] = "Master Data Machine"; // caption of grid
$grid["autowidth"] = true; // expand grid to screen width
$grid["multiselect"] = false; // allow you to multi-select through checkboxes

$g->set_options($grid);

$g->set_actions(array(	
						"add"=>true, // allow/disallow add
						"edit"=>true, // allow/disallow edit
						"delete"=>true, // allow/disallow delete
						"rowactions"=>true, // show/hide row wise edit/del/save option
						"search" => "advance" // show single/multi field search condition (e.g. simple or advance)
					) 
				);

// you can provide custom SQL query to display data
$g->select_command = "SELECT * FROM machine ";

// this db table will be used for add,edit,delete
$g->table = "machine";

// pass the cooked columns to grid
$g->set_columns($cols);

// generate grid output, with unique grid name as 'list1'
$out = $g->render("list1");

$themes = array("redmond","smoothness","start","dot-luv","excite-bike","flick","ui-darkness","ui-lightness","cupertino","dark-hive");
$i = rand(0,8);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" media="screen" href="js/themes/<?php echo $themes[$i]?>/jquery-ui.custom.css"></link>	
	<link rel="stylesheet" type="text/css" media="screen" href="js/jqgrid/css/ui.jqgrid.css"></link>	
	
	<script src="<?=base_url()?>assets/scripts/phpjqgrid/jquery.min.js" type="text/javascript"></script>
	<script src="<?=base_url()?>assets/scripts/phpjqgrid/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>
	<script src="<?=base_url()?>assets/scripts/phpjqgrid/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>	
	<script src="<?=base_url()?>assets/scripts/phpjqgrid/themes/jquery-ui.custom.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body {
	background-image: url(/mat_aab/inventory/img/ok.jpg);
}
</style>
</head>
<body>
	<div style="margin:10px">
	<br>
	<br>
	<?php echo $out?>
	</div>
</body>
</html>