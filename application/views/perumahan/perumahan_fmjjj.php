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
			{field:'id',width:20,hidden:true},
			{field:'tahun',title:'Tahun',width:40},
			{field:'unit_kerja',title:'Unit Kerja',width:90},
			{field:'nm_keg',title:'Kegiatan',width:300},
			{field:'provinsi',width:70,hidden:true},
			{field:'kota',title:'Kota',width:120},
			{field:'lokasi',width:80,hidden:true},
			{field:'x',width:90,hidden:true},
			{field:'y',width:40,hidden:true},
			{field:'no_kontrak',title:'No Kontrak',width:80},
			{field:'tgl_kontrak',title:'Tgl Kontrak',width:70},
			{field:'durasi',width:70,hidden:true},
			{field:'tgl_mulai',width:80,hidden:true},
			{field:'tgl_akhir',width:40,hidden:true},
			{field:'tgl_act_mulai',width:90,hidden:true},
			{field:'tgl_act_akhir',width:30,hidden:true},
			{field:'prog_rencana',title:'Progres Rencana',width:100},
			{field:'prog_realisasi',title:'Progres Realisasi',width:100},
			{field:'nilai_rencana',title:'Nilai Rencana',width:90},
			{field:'nilai_realisasi',title:'Nilai Realisasi',width:90},
			{field:'biaya_realisasi',width:40,hidden:true},
			{field:'bln_realisasi',width:90,hidden:true},
			{field:'keterangan',width:150,hidden:true},
			{field:'permasalahan',width:70,hidden:true}
		]],
		url: '<?=base_url()?>perumahann/gridreal'
	});
}

var url;
function tambahreal(){
	$('#dlg').dialog('open').dialog('setTitle','Tambah <?=$NmMenu?>');
	$('#fm').form('clear');
	url = '<?=base_url()?>perumahann/getformreal/tambahreal';
}

function ubahreal(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$('#dlg').dialog('open').dialog('setTitle','Ubah <?=$NmMenu?>');
		$('#fm').form('load',row);
				
		tahun = row.tahun;
		tahun = tahun.replace(/<br \/>/g, "");
		$('#tahun').val(tahun);
		unit_kerja = row.unit_kerja;
		unit_kerja = unit_kerja.replace(/<br \/>/g, "");
		$('#unit_kerja').val(unit_kerja);
		nm_keg = row.nm_keg;
		nm_keg = nm_keg.replace(/<br \/>/g, "");
		$('#nm_keg').val(nm_keg);
		provinsi = row.provinsi;
		provinsi = provinsi.replace(/<br \/>/g, "");
		$('#provinsi').val(provinsi);
		kota = row.kota;
		kota = kota.replace(/<br \/>/g, "");
		$('#kota').val(kota);
		lokasi = row.lokasi;
		lokasi = lokasi.replace(/<br \/>/g, "");
		$('#lokasi').val(lokasi);
		x = row.x;
		x = x.replace(/<br \/>/g, "");
		$('#x').val(x);
		y = row.y;
		y = y.replace(/<br \/>/g, "");
		$('#y').val(y);
		no_kontrak = row.no_kontrak;
		no_kontrak = no_kontrak.replace(/<br \/>/g, "");
		$('#no_kontrak').val(no_kontrak);
		tgl_kontrak = row.tgl_kontrak;
		tgl_kontrak = tgl_kontrak.replace(/<br \/>/g, "");
		$('#tgl_kontrak').val(tgl_kontrak);
		durasi = row.durasi;
		durasi = durasi.replace(/<br \/>/g, "");
		$('#durasi').val(durasi);
		tgl_mulai = row.tgl_mulai;
		tgl_mulai = tgl_mulai.replace(/<br \/>/g, "");
		$('#tgl_mulai').val(tgl_mulai);
		tgl_akhir = row.tgl_akhir;
		tgl_akhir = tgl_akhir.replace(/<br \/>/g, "");
		$('#tgl_akhir').val(tgl_akhir);
		tgl_act_mulai = row.tgl_act_mulai;
		tgl_act_mulai = tgl_act_mulai.replace(/<br \/>/g, "");
		$('#tgl_act_mulai').val(tgl_act_mulai);
		tgl_act_akhir = row.tgl_act_akhir;
		tgl_act_akhir = tgl_act_akhir.replace(/<br \/>/g, "");
		$('#tgl_act_akhir').val(tgl_act_akhir);
		prog_rencana = row.prog_rencana;
		prog_rencana = prog_rencana.replace(/<br \/>/g, "");
		$('#prog_rencana').val(prog_rencana);
		prog_realisasi = row.prog_realisasi;
		prog_realisasi = prog_realisasi.replace(/<br \/>/g, "");
		$('#prog_realisasi').val(prog_realisasi);
		biaya_realisasi = row.biaya_realisasi;
		biaya_realisasi = biaya_realisasi.replace(/<br \/>/g, "");
		$('#biaya_realisasi').val(biaya_realisasi);
		bln_realisasi = row.bln_realisasi;
		bln_realisasi = bln_realisasi.replace(/<br \/>/g, "");
		$('#bln_realisasi').val(bln_realisasi);
		keterangan = row.keterangan;
		keterangan = keterangan.replace(/<br \/>/g, "");
		$('#keterangan').val(keterangan);
		permasalahan = row.permasalahan;
		permasalahan = permasalahan.replace(/<br \/>/g, "");
		$('#permasalahan').val(permasalahan);
		id = row.id;
		id = id.replace(/<br \/>/g, "");
		$('#id').val(id);
		nilai_rencana = row.nilai_rencana;
		nilai_rencana = nilai_rencana.replace(/<br \/>/g, "");
		$('#nilai_rencana').val(nilai_rencana);
		nilai_realisasi = row.nilai_realisasi;
		nilai_realisasi = nilai_realisasi.replace(/<br \/>/g, "");
		$('#nilai_realisasi').val(nilai_realisasi);
		url = '<?=base_url()?>perumahann/getformreal/ubahreal';
	} 
}

function simpanreal(){
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

function hapusreal(){
	var row = $('#dg').datagrid('getSelected');
	if (row){
		$.messager.confirm('Confirm','Apakah anda yakin akan menghapus data ini?',function(r){
			if (r){
				$.getJSON('<?=base_url()?>perumahann/hapusreal',{id:row.id},function(result){
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