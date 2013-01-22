<script type="text/javascript">
function setdg(){
	$('#dg').datagrid({  	
		title:"<?=$NmMenu?>",
		width:900,
		height:350,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			
			{field:'id',width:120,hidden:true},
			{field:'parent_id',width:10,hidden:true},
			{field:'no_urut',width:10,hidden:true},
			{field:'no',title:'No',width:15},
			{field:'nama',title:'Nama Kegiatan',width:225},
			{field:'sat',title:'Satuan',width:50},
			{field:'posisi',width:10,hidden:true},
			{field:'font',width:10,hidden:true},
			{field:'kategori',title:'Kategori',width:90},
			{field:'status',title:'Status',width:50}
		]],
		url: '<?=base_url()?>perumahan/gridKeg'
	});
}


var url;
function tambah(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?=$NmMenu?>');
	$('#fm').form('clear');
	url = '<?=base_url()?>perumahan/getform/tambah';
}
			
function ubah(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?=$NmMenu?>');
		$('#fm').form('load',row);
		
		id = row.id;
		id = id.replace(/<br \/>/g, "");
		$('#id').val(id);
		parent_id = row.parent_id;
		parent_id = parent_id.replace(/<br \/>/g, "");
		$('#parent_id').val(parent_id);
		
		no = row.no;
		no = no.replace(/<br \/>/g, "");
		$('#no').val(no);
		nama = row.nama;
		nama = nama.replace(/<br \/>/g, "");
		$('#nama').val(nama);
		sat = row.sat;
		sat = sat.replace(/<br \/>/g, "");
		$('#sat').val(sat);
		posisi = row.posisi;
		posisi = posisi.replace(/<br \/>/g, "");
		$('#posisi').val(posisi);
		//font = row.font;
		//font = font.replace(/<br \/>/g, "");
		//$('#font').val(font);
		kategori = row.kategori;
		kategori = kategori.replace(/<br \/>/g, "");
		$('#kategori').val(kategori);
		status = row.status;
		status = status.replace(/<br \/>/g, "");
		$('#status').val(status);
				
		url = '<?=base_url()?>perumahan/getform/ubah';
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
				$.getJSON('<?=base_url()?>perumahan/hapus',{id:row.id},function(result){
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