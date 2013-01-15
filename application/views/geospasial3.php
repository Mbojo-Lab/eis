<link type="text/css" rel="stylesheet" href="<?=base_url()?>assets/scripts/maps/demos/css/style.css" />

<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<div class="box grid_16">
	<div class="item rounded dark">
		<div id="map_canvas" class="map rounded"></div>
	</div>
	<div id="radios" class="item gradient rounded shadow" style="margin:5px;padding:5px 5px 5px 10px;"></div>
</div>  


<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> 
<script type="text/javascript" src="<?=base_url()?>assets/scripts/maps/demos/js/demo.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/scripts/maps/ui/jquery.ui.map.js"></script>
<script type="text/javascript">
$(function() { 
	demo.add(function() {			
		$('#map_canvas').gmap({'disableDefaultUI':true}).bind('init', function(evt, map) { 
			
			$('#map_canvas').gmap('addControl', 'radios', google.maps.ControlPosition.TOP_LEFT);
			var southWest = map.getBounds().getSouthWest();
			var northEast = map.getBounds().getNorthEast();
			var lngSpan = northEast.lng() - southWest.lng();
			var latSpan = northEast.lat() - southWest.lat();
			var images = ['http://google-maps-icons.googlecode.com/files/home.png', 'http://google-maps-icons.googlecode.com/files/realestate.png', 'http://google-maps-icons.googlecode.com/files/apartment.png'];
			var tags = ['DAK', 'Rusunawa', 'PSU'];
			
			$.each(tags, function(i, tag) {
				
				$('#radios').append(('<label style="margin-right:5px;display:block;"><input type="checkbox" style="margin-right:3px" value="{0}"/>{1}</label>').format(tag, tag));
			});
			
			<? foreach ($rs as $r) { ?>
				$('#map_canvas').gmap('addMarker', { 'icon': images[(Math.floor(Math.random()*3))], 'tags':['<?=$r->kategori?>'], 'bound':false, 'position': new google.maps.LatLng(<?=$r->x.", ".$r->y?>) } ).click(function() {
					var visibleInViewport = ( $('#map_canvas').gmap('inViewport', $(this)[0]) ) ? '<?=$r->nm_keg."<br>".$r->lokasi.", ".$r->kota.", ".$r->nm_prov?>' : 'I\'m sad and hidden.';
					$('#map_canvas').gmap('openInfoWindow', { 'content': $(this)[0].tags + '<br/>' +visibleInViewport }, this);
				});
				
			<? } ?>
			
			$('input:checkbox').click(function() {
				$('#map_canvas').gmap('closeInfoWindow');
				$('#map_canvas').gmap('set', 'bounds', null);
				var filters = [];
				$('input:checkbox:checked').each(function(i, checkbox) {
					filters.push($(checkbox).val());
				});
				if ( filters.length > 0 ) {
					$('#map_canvas').gmap('find', 'markers', { 'property': 'tags', 'value': filters, 'operator': 'OR' }, function(marker, found) {
						if (found) {
							$('#map_canvas').gmap('addBounds', marker.position);
							//$('#map_canvas').gmap('option', 'zoom', 9);
						}
						marker.setVisible(found); 
					});
				} else {
					$.each($('#map_canvas').gmap('get', 'markers'), function(i, marker) {
						$('#map_canvas').gmap('addBounds', marker.position);
						marker.setVisible(true); 
					});
				}
			});
			
			
		});
	}).load();
});
</script>  