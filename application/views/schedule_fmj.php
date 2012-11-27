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
		width:700,
		height:350,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'date0',width:90,hidden:true},
			{field:'date',width:90,hidden:true},
			{field:'tanggal',title:'Tanggal',width:90,align:'center',formatter:function(val,row,index){
				tgl = formatDate(new Date(parseInt(row.date)+(3600*7*1000)), '%d/%M/%Y');				
				return tgl;  
			
			}},
			{field:'jam',title:'Jam',width:90,align:'center',formatter:function(val,row,index){
				jam = formatDate(new Date(parseInt(row.date)+(3600*7*1000)), '%H:%m:%s');				
				return jam;  
			
			}},
			{field:'title',title:'Kegiatan',width:120},
			{field:'description',title:'Keterangan',width:180}
		]],
		url: '<?=base_url()?>perkantoran/grid'
	});
}

var url;
function tambah(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?=$NmMenu?>');
	$('#fm').form('clear');
	url = '<?=base_url()?>perkantoran/getform/tambah';
}

function ubah(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?=$NmMenu?>');
		$('#fm').form('load',row);
		datetime = formatDate(new Date(parseInt(row.date)+(3600*7*1000)), '%d/%M/%Y %H:%m:%s');
		$('#date').datetimebox('setValue',datetime);
		url = '<?=base_url()?>perkantoran/getform/ubah';
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
				$.getJSON('<?=base_url()?>perkantoran/hapus',{date:row.date},function(result){
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