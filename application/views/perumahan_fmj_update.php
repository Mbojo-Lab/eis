<script type="text/javascript">   


function setdg(){
	$('#dg').datagrid({  	
		title:"<?=$NmMenu?>",
		width:1200,
		height:350,	
		toolbar:'#toolbar',
		fitColumns:true,
		rownumbers:true,
		columns:[[  
	
			{field:'id',title:'ID',width:10,hidden:true },
			{field:'tahun',title:'Tahun',width:15},
			{field:'nm_keg',title:'Nama Kegiatan',width:130},
			{field:'lokasi',title:'Lokasi',width:75},
			{field:'prog_rencana',title:'Progress Rencana',width:40},
			{field:'prog_realisasi',title:'Progress Realisasi',width:40},
			{field:'nilai_rencana',title:'Nilai Rencana',width:40},
			{field:'nilai_realisasi',title:'Nilai Realisasi',width:40}
		]],
		url: '<?=base_url()?>perumahan_update/grid'
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
		$('#dlg').dialog('open').dialog('setTitle','<?=$NmMenu?>');
		$('#fm').form('load',row);
		
		id0 = row.id;
		id = id0.replace(/<br \/>/g, "");
		$('#id').val(id);
		prog_rencana0 = row.prog_rencana;
		prog_rencana = prog_rencana0.replace(/<br \/>/g, "");
		$('#prog_rencana').val(prog_rencana);
		prog_realisasi0 = row.prog_realisasi;
		prog_realisasi = prog_realisasi0.replace(/<br \/>/g, "");
		$('#prog_realisasi').val(prog_realisasi);
		nilai_rencana0 = row.nilai_rencana;
		nilai_rencana = nilai_rencana0.replace(/<br \/>/g, "");
		$('#nilai_rencana').val(nilai_rencana);
		nilai_realisasi0 = row.nilai_realisasi;
		nilai_realisasi = nilai_realisasi0.replace(/<br \/>/g, "");
		$('#nilai_realisasi').val(nilai_realisasi);
		url = '<?=base_url()?>perumahan_update/getform/ubah';
	}
}

function simpan(){
	$('#fm').form('submit',{
		url: '<?=base_url()?>perumahan_update/getform/ubah',
		onSubmit: function(){
			return $(this).form('validate');
		},
		success: function(result){
		//alert (result);
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


</script>	