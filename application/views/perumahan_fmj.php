<script type="text/javascript">   
function getDetail(){
	$.getJSON('<?=base_url()?>perumahan/getDetail',{
		tahun:$('#tahun').val(),
		id_keg:$('#id_keg').val()
	},function(result){
		$('#target').val(result.target);
		$('#tg_anggaran').val(result.tg_anggaran);
		$('#realisasi').val(result.realisasi);
		$('#re_anggaran').val(result.re_anggaran);
		$('#alamat').val(result.address);
		$('#x').val(result.x);
		$('#y').val(result.y);
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

</script>	