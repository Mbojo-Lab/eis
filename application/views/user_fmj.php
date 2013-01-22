<script type="text/javascript">   


function formatDate(date, fmt) {
    function pad(value) {
        return (value.toString().length < 2) ? '0' + value : value;
    }
    return fmt.replace(/%([a-zA-Z])/g, function (_, fmtCode) {
        switch (fmtCode) {
        case 'Y':
            return date.getUTCFullYear();
        case 'M':
            return pad(date.getUTCMonth() + 1);
        case 'd':
            return pad(date.getUTCDate());
        case 'H':
            return pad(date.getUTCHours());
        case 'm':
            return pad(date.getUTCMinutes());
        case 's':
            return pad(date.getUTCSeconds());
        default:
            throw new Error('Unsupported format code: ' + fmtCode);
        }
    });
}

function setdg(){
	$('#dg').datagrid({  	
		title:"<?=$NmMenu?>",
		width:900,
		height:350,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'username0',width:90,hidden:true},
			{field:'nama_lengkap',title:'Nama Lengkap',width:90},
			{field:'username',title:'Username',width:90},
			{field:'password',title:'Password',width:90},
			{field:'group',title:'Group',width:90},
			{field:'unit_kerja',title:'Unit Kerja',width:90}
		]],
		url: '<?=base_url()?>user/grid'
	});
}

var url;
function tambah(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?=$NmMenu?>');
	$('#fm').form('clear');
	url = '<?=base_url()?>user/getform/tambah';
}

function ubah(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?=$NmMenu?>');
		$('#fm').form('load',row);
		url = '<?=base_url()?>user/getform/ubah';
	}
}

function simpan(){
	$('#fm').form('submit',{
		url: url,
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

function hapus(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$.messager.confirm('Confirm','Apakah anda yakin akan menghapus data ini?',function(r){
			if (r){
				$.getJSON('<?=base_url()?>user/hapus',{username:row.username},function(result){
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