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
	
	parent_id=$('#no').val();
	no=$('#no').val();
	nama=$('#nama').val();
	sat=$('#sat').val();
	sasaran=$('#sasaran').val();
	posisi=$('#posisi').val();
	
	if (aksi=="tambah"){
		$.getJSON('<?=base_url()?>perumahan/tambah',{
			
		},function(result){
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
		});
	} else if (aksi=="ubah") {
	
	} else if (aksi=="hapus") {
		
	}
}
</script>