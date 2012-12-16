<script type="text/javascript">
$(function(){	

$.extend($.fn.datebox.defaults,{
	formatter:function(date){
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		return (d<10?('0'+d):d)+'/'+(m<10?('0'+m):m)+'/'+y;
	},
	parser:function(s){
		if (!s) return new Date();
		var ss = s.split('/');
		var d = parseInt(ss[0],10);
		var m = parseInt(ss[1],10);
		var y = parseInt(ss[2],10);
		if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
			return new Date(y,m-1,d);
		} else {
			return new Date();
		}
	}
});	

setdg();
/*$('#w').window({ 
	title:"<?php //echo strtoupper($NmMenu) ?>", 
    width:750,
	height:400,
	inline:true,
	left:10,  
	top:45, 
	collapsible:false,
	minimizable:false,
	maximizable:false
}); 
 */
	
$('#btnTbh').click(function(){
	tambah();
});

$('#btnUbh').click(function(){
	ubah();
});

$('#btnHps').click(function(){
	hapus();
});

$('#btnSim').click(function(){
	simpan();
});

$('#btnPrint').click(function(){
	topdf();
});

$('#btnSubmit').click(function(){
	simpan();
});

$('#btnReset').click(function(){
	$('#fm').form('clear');
});



});//Akhir Document Ready
</script>