<script type="text/javascript">   
$(function(){
	setdg($('#id_keg').val());
});
function getDetail(){
	$.getJSON('<?=base_url()?>perumahann/getDetail',{
		tahun:$('#tahun').val(),
		id_keg:$('#id_keg').val()
	},function(result){
		$('#target').val(result.target);
		$('#sasaran').val(result.sasaran);
		$('#tg_anggaran').val(result.tg_anggaran);
		$('#realisasi').val(result.realisasi);
		$('#re_anggaran').val(result.re_anggaran);
		$('#alamat').val(result.address);
		$('#x').val(result.x);
		$('#y').val(result.y);
		$('#bulan').val(result.bulan);
		setdg($('#id_keg').val());
	});
}

function simpann(){
	$('#fm').form('submit',{
		url: '<?=base_url()?>perumahann/simpann',
		onSubmit: function(){
			return $(this).form('validate');
		},
		success: function(result){
			alert(result);
			var result = eval('('+result+')');
			if (result.success){
				$('#dlg').dialog('close');		// close the dialog
				$('#dg').datagrid('reload');	// reload the user data
				$.messager.show({
					title: 'Info',
					msg: result.msg
				});
				kosong();
			} else {
				$.messager.alert('error',result.msg);
			}
		}
	});
}

function kosong(){
	$("#fm").form('clear');
}

function setdg(id){
	$('#dg').edatagrid({  	
		title:"",
		width:770,
		height:250,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'provinsi',title:'Provinsi',width:80,editor:'validatebox'},
			{field:'kota',title:'Kota',width:80,editor:'validatebox'},
			{field:'address',title:'Lokasi',width:80,editor:'validatebox'},
			{field:'x',title:'X',width:80,editor:'validatebox'},
			{field:'y',title:'Y',width:80,editor:'validatebox'},
			{field:'nilai',title:'Nilai',width:80,editor:'numberbox'},
			{field:'ket',title:'Keterangan',width:80,editor:'validatebox'}
		]],
		url: '<?=base_url()?>perumahann/grid/'+id,
		saveUrl: '<?=base_url()?>perumahann/simpanGrid/'+id,
		updateUrl: '<?=base_url()?>perumahann/simpanGrid/'+id,
		destroyUrl: '<?=base_url()?>perumahann/hapusGrid/'+id,
		onDestroy:function(index,data){
			$.post('<?=base_url()?>perumahann/hapusGrid/'+id,{
				no:data.no
			},function(result){
				//alert(result);	
			});	
		}
		<? /*, 
		onAfterEdit:function(index,data){
			$.post('<?=base_url()?>perumahan/simpanGrid/'+id,{
				no:data.no,
				provinsi:data.provinsi,
				kota:data.kota,
				address:data.address,
				x:data.x,
				y:data.y,
				nilai:data.nilai,
				ket:data.ket
			},function(result){
				alert(result);	
			});	
		}*/ ?>
	});
}

</script>	