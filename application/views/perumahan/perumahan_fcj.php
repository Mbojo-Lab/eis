<script type="text/javascript">
$(function(){	
kosong();


$('#aksi').change(function(){
	if ($('#aksi').val()==""){
		kosong();	
	} else {
		$(':input').attr('disabled',false);
	}
});

$('#parent_id').combotree({
	onClick: function(node){
		if ($('#aksi').val()=="ubah" || $('#aksi').val()=="hapus"){
			
			$.getJSON('<?=base_url()?>perumahan/getKeg/'+node.id,{ aut:'kikin'},function(result){
			  $('#no').val(result.no);
			  $('#nama').val(result.nama);
			  $('#sat').val(result.sat);
			  $('#sasaran').val(result.sasaran);
			  $('#posisi').val(result.posisi);
			  $('#kategori').val(result.kategori);
			  $('#status').val(result.status);
			});
			
		}
	}
});





});//Akhir Document Ready

function kosong(){
	$(':input').val('');
	$(':input').attr('disabled',true);
	$('#aksi').attr('disabled',false);
}

function simpan(){
	aksi=$('#aksi').val();
	
	parent_id=$('#parent_id').combotree('getValue');
	no=$('#no').val();
	nama=$('#nama').val();
	sat=$('#sat').val();
	//sasaran=$('#sasaran').val();
	posisi=$('#posisi').val();
	kategori=$('#kategori').val();
	status=$('#status').val();
	
	if (aksi=="tambah"){
		$.post('<?=base_url()?>perumahan/getform/tambah',{
			parent_id:parent_id,
			no:no,
			nama:nama,
			sat:sat,
			//sasaran:sasaran,
			posisi:posisi,
			kategori:kategori,
			status:status
		},function(result){
			var result = eval('('+result+')');
			if (result.success){
				$('#dlg').dialog('close');		// close the dialog
				$('#dg').datagrid('reload');	// reload the user data
				$.messager.show({
					title: 'Info',
					msg: result.msg
				});
				location.reload(true);
			} else {
				$.messager.alert('error',result.msg);
			}
		});
	} else if (aksi=="ubah") {
		$.post('<?=base_url()?>perumahan/getform/ubah',{
			parent_id:parent_id,
			no:no,
			nama:nama,
			sat:sat,
			//sasaran:sasaran,
			posisi:posisi,
			kategori:kategori,
			status:status
		},function(result){
			var result = eval('('+result+')');
			if (result.success){
				$('#dlg').dialog('close');		// close the dialog
				$('#dg').datagrid('reload');	// reload the user data
				$.messager.show({
					title: 'Info',
					msg: result.msg
				});
				location.reload(true);
			} else {
				$.messager.alert('error',result.msg);
			}
		});
	} else if (aksi=="hapus") {
		if ($('#parent_id').combotree('getValue') != '') {
		$.messager.confirm('Confirm','Apakah anda yakin akan menghapus data ini?',function(r){  
			if (r){ 
				$.getJSON('<?=base_url()?>perumahan/hapus',{
					id:parent_id
				},function(result){
					if (result.success){
						$('#dlg').dialog('close');		// close the dialog
						$('#dg').datagrid('reload');	// reload the user data
						$.messager.show({
							title: 'Info',
							msg: result.msg
						});
						location.reload(true);
					} else {
						$.messager.alert('error',result.msg);
					}
				});
			}
		}); 	
	} else {
		$.messager.alert('Warning','Silahkan pilih data yang akan di hapus!');
	}
	
		
	}
}
</script>