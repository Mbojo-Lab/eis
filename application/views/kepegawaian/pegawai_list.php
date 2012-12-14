<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<div class="box grid_8 single_datatable">
  <div id="dt1" class="no_margin">
	<table class=" datatable">
	<thead>
		<tr>
			<th width="30">NO.</th>
			<th width="120">NIP</th>
			<th>NAMA PEGAWAI</th>
			<? if ($status!='Tidak Hadir'){?>
			<th>JAM MASUK</th>				
			<? } ?>
		</tr>
	</thead>
	<tbody>    
    <?php $no=1;foreach ($rs as $r){  ?>
		<tr class="gradeX">
			<td align="center"><?=$no?></td>
			<td><?=$r->nip?></td>
			<td><?=$r->nama?></td>
			<? if ($status!='Tidak Hadir'){?>
			<td><?=$r->masuk?></td>
			<? } ?>			
		</tr>
    <?php $no +=1;} ?>
	</tbody>
</table>
  </div>
</div>