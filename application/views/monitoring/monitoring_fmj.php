<script type="text/javascript">   
function simpan(){
	$('#fm').form('submit',{
		url: '<?=base_url()?>monitoring/simpan',
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


</script>	