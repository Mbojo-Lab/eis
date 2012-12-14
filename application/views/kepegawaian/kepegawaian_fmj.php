<script type="text/javascript">   
function setdg(){
	$('#dg').edatagrid({  	
		title:"<?=$NmMenu?>",
		width:700,
		height:350,	
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'no',title:'No',width:80,hidden:true},
			{field:'unit_kerja',title:'Unit Kerja',width:200},
			{field:'jml_pns',title:'Jumlah PNS',width:80,align:'right',editor:'numberbox'},
			{field:'jml_honor',title:'Jumlah Honorer',width:80,align:'right',editor:'numberbox'}
		]],
		url: '<?=base_url()?>kepegawaian/grid',
		updateUrl: '<?=base_url()?>kepegawaian/ubah'
	});
}

</script>	