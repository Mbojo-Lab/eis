<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<div class="box grid_16 single_datatable">
  <div id="dt1" class="no_margin">
	<table class=" datatable">
	<thead>
		<tr>
			<th width="30">NO.</th>
			<th>NAMA KEGIATAN</th>
			<th>PAGU</th>
		</tr>
	</thead>
	<tbody>    
    <?php $no=1;foreach ($rs as $r){  ?>
		<tr class="gradeX">
			<td align="center"><?=$no?></td>
			<td><?=$r->nama_keg?></td>
			<td align="right"><?=number_format($r->anggaran)?></td>
		</tr>
    <?php $no +=1;} ?>
	</tbody>
</table>
  </div>
</div>