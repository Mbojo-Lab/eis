<script type="text/javascript">   

function setdg(){
	$('#dg').datagrid({  	
		title:"<?=$NmMenu?>",
		width:950,
		height:350,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
			{field:'id',width:90,hidden:true},
			{field:'tahun',title:'Tahun',width:40},
			{field:'unit_kerja',title:'Unit Kerja',width:90},
			{field:'kegiatan',title:'Kegiatan',width:300},
			{field:'volume',title:'Volume',width:40},
			{field:'satuan',title:'Satuan',width:50},
			{field:'anggaran',title:'Anggaran',width:80},
			{field:'provinsi',title:'Provinsi',width:90}
		]],
		url: '<?=base_url()?>perumahann/grid'
	});
}

var url;
function tambah(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?=$NmMenu?>');
	$('#fm').form('clear');
	url = '<?=base_url()?>perumahann/getform/tambah';
}

function ubah(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?=$NmMenu?>');
		$('#fm').form('load',row);
				
		tahun = row.tahun;
		tahun = tahun.replace(/<br \/>/g, "");
		$('#tahun').val(tahun);
		id = row.id;
		id = id.replace(/<br \/>/g, "");
		$('#id').val(id);
		unit_kerja = row.unit_kerja;
		unit_kerja = unit_kerja.replace(/<br \/>/g, "");
		$('#unit_kerja').val(unit_kerja);
		kegiatan = row.kegiatan;
		kegiatan = kegiatan.replace(/<br \/>/g, "");
		$('#kegiatan').val(kegiatan);
		volume = row.volume;
		volume = volume.replace(/<br \/>/g, "");
		$('#volume').val(volume);
		satuan = row.satuan;
		satuan = satuan.replace(/<br \/>/g, "");
		$('#satuan').val(satuan);
		anggaran = row.anggaran;
		anggaran = anggaran.replace(/<br \/>/g, "");
		$('#anggaran').val(anggaran);
		provinsi = row.provinsi;
		provinsi = provinsi.replace(/<br \/>/g, "");
		$('#provinsi').val(provinsi);
		url = '<?=base_url()?>perumahann/getform/ubah';
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
				$.getJSON('<?=base_url()?>perumahann/hapus',{id:row.id},function(result){
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