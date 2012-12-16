<script type="text/javascript">   


function setdg(){
	$('#dg').datagrid({  	
		title:"<?=$NmMenu?>",
		width:700,
		height:350,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'unit_kerja',title:'Unit Kerja',width:120},
			{field:'keterangan',title:'Keterangan',width:180}
		]],
		url: '<?=base_url()?>unit/grid'
	});
}

var url;
function tambah(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?=$NmMenu?>');
	$('#fm').form('clear');
	url = '<?=base_url()?>unit/getform/tambah';
}

function ubah(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?=$NmMenu?>');
		$('#fm').form('load',row);
		
		unit_kerja = row.description;
		unit_kerja = unit_kerja.replace(/<br \/>/g, "");
		$('#unit_kerja').val(unit_kerja);
		keterangan = row.description;
		keterangan = keterangan.replace(/<br \/>/g, "");
		$('#keterangan').val(keterangan);
		url = '<?=base_url()?>unit/getform/ubah';
	}
}

function simpan(){
	$('#fm').form('submit',{
		url: url,
		onSubmit: function(){
			return $(this).form('validate');
		},
		success: function(result){
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

function hapus(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$.messager.confirm('Confirm','Apakah anda yakin akan menghapus data ini?',function(r){
			if (r){
				$.getJSON('<?=base_url()?>unit/hapus',{unit_kerja:row.unit_kerja},function(result){
					if (result.success){
						$('#dg').datagrid('reload');	// reload the user data
						$.messager.show({
							title: 'Info',
							msg: result.msg
						});
					} else {
						$.messager.alert('error',result.msg);
						/*$.messager.show({	// show error message
							title: 'Error',
							msg: result.msg
						});*/
					}
				});
			}
		});
	}
}


</script>	