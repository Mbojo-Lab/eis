<script type="text/javascript">   
$(function(){
	setdg($('#id').val());
});
function getDetailUpdate(){
	$.getJSON('<?=base_url()?>perumahan/getDetailUpdate',{
		tahun:$('#tahun').val(),
		id:$('#id').val()
	},function(result){
		$('#prog_rencana').val(result.prog_rencana);
		$('#prog_realisasi').val(result.prog_realisasi);
		$('#nilai_rencana').val(result.nilai_rencana);
		$('#nilai_realisasi').val(result.nilai_realisasi);
		$('#unit_kerja').val(result.unit_kerja);
		$('#lokasi').val(result.lokasi);
		$('#no_kontrak').val(result.no_kontrak);
		$('#tgl_kontrak').val(result.tgl_kontrak);
		
		setdg($('#id').val());
	});
}

function simpan(){
	$('#fm').form('submit',{
		url: '<?=base_url()?>perumahan/simpan',
		onSubmit: function(){
			return $(this).form('validate');
		},
		success: function(result){
			//alert(result);
			var result = eval('('+result+')');
			if (result.success){
				$('#dlg').dialog('close');		// close the dialog
				$('#dg').datagrid('reload');	// reload the user data
				$.messager.show({
					title: 'Info',
					msg: result.msg
				});
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
		width:620,
		height:250,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'prog_rencana',title:'Progress Rencana (%)',width:90,editor:'validatebox'},
			{field:'prog_realisasi',title:'Progress Realisasi (%)',width:90,editor:'validatebox'},
			{field:'nilai_rencana',title:'Nilai Rencana',width:100,editor:'validatebox'},
			{field:'nilai_realisasi',title:'Nilai Realisasi',width:100,editor:'validatebox'},
					]],
		url: '<?=base_url()?>perumahan/gridUpdate/'+id,
		//saveUrl: '<?=base_url()?>perumahan/simpanGrid/'+id,
		updateUrl: '<?=base_url()?>perumahan/simpanGridUpdate/'+id,
		//destroyUrl: '<?=base_url()?>perumahan/hapusGrid/'+id,
		onDestroy:function(index,data){
			$.post('<?=base_url()?>perumahan/hapusGrid/'+id,{
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