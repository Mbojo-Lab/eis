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
			{field:'jabatan',title:'Jabatan',width:200},
			{field:'jml_pria',title:'Jumlah Pria',width:80,align:'right',editor:'numberbox'},
			{field:'jml_wanita',title:'Jumlah Wanita',width:80,align:'right',editor:'numberbox'}
		]],
		url: '<?=base_url()?>kepegawaian/grid2',
		updateUrl: '<?=base_url()?>kepegawaian/ubah2'
	});
}
</script>	