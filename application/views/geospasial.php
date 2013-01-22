<style>
.gmap3{
	margin: 2px auto;
	border: 0px dashed #C0C0C0;
	width: 100%;
	height: 500px;
}
</style>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/scripts/maps/gmap3.js"></script> 
	
	<script type="text/javascript">
		$(function(){
			$('input:checkbox').click(function() {
				var filters = [];
				$('input:checkbox:checked').each(function(i, checkbox) {
					filters.push($(checkbox).val());
				});
				
				if ( filters.length > 0 ) {
					$('#dtdet').load('<?=base_url()?>geospasial/ajax',{
					  	prov:$('#prov').val(),
						filter:filters
					  });
				} else {
					$('#dtdet').load('<?=base_url()?>geospasial/ajax',{
					  	prov:$('#prov').val()
					  });
				}
			});
			

$("#map").gmap3({
  map:{
    options:{
      center:{lat:-4.477856,lng:121.977537},
      zoom:5,
      mapTypeId: google.maps.MapTypeId.TERRAIN
    }
  },
  polygon: {
    values: [
	<?
	foreach ($rs as $r):
	if ($r->koordinat != ""){			
	?>
      {	        
			options:{
	          strokeColor: "#FF0000",
	          strokeOpacity: 0.8,
	          strokeWeight: 2,
	          fillColor: "#FF0000",
	          fillOpacity: 0.35,
	          paths:[
	              <?=$r->koordinat?>
	          ]
	        },onces:{
	            click: function(polygon, event){				  
	              var vertices = polygon.getPath(),
	                contentString = 'Provinsi <?=$r->nm_prov?></br>Clicked Location: ' + event.latLng.lat() + ',' + event.latLng.lng() + '</br>';
				  
				  <?/*window.open('<?=base_url()?>geospasial/index/11/DAK','_self');	*/?>
				  var filters = [];
				  $('input:checkbox:checked').each(function(i, checkbox) {
					filters.push($(checkbox).val());
				  });
				  
				  $('#dtdet').load('<?=base_url()?>geospasial/ajax',{
				  	prov:<?=$r->id?>
				  });
				  
				  $('#prov').val('<?=$r->id?>');
				  
	            }
	          }	
      },
	  <? } endforeach;?>
    ],
    onces:{
      click: function(polygon){
        polygon.setOptions({
            fillColor: "#FFAF9F",
            strokeColor: "#FF512F"
        });
      }
    }
  }
});			
			
			
		});
	</script>

<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>


<div class="box grid_16">
	<div id="map" class="gmap3"></div>
	
	<input type="hidden" id="prov" value=""/>
	<div id="radios" class="item gradient rounded shadow" style="margin:15px;padding:5px;">
		<label style="margin-right:5px;"><input type="checkbox" style="margin-right:3px" value="DAK"/>DAK</label>
		<label style="margin-right:5px;"><input type="checkbox" style="margin-right:3px" value="Rusunawa"/>Rusunawa</label>
		<label style="margin-right:5px;"><input type="checkbox" style="margin-right:3px" value="PSU"/>PSU</label>
	</div>
<div id="dtdet2"></div>	
<div class="box grid_16 single_datatable">
  <div id="dt1" class="no_margin">
	<table class="datatable">
		<thead>
			<tr>
				<th width="30">NO.</th>
				<th width="120">KATEGORI</th>
				<th>NAMA KEGIATAN</th>
				<th>LOKASI</th>
				<th>KOTA/KABUPATEN</th>		
				<th>PROVINSI</th>
			</tr>
		</thead>
		<tbody id="dtdet">
		  <?=$html?>
		</tbody>
	</table>	
  </div>
</div>	
</div>  