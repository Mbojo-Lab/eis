<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar.css">
<!-- Theme CSS file: it makes eventCalendar nicer -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar_theme_responsive.css">
<!-- GEO SPACIAL-->
<style>
.gmap3{
	margin: 2px auto;
	border: 0px dashed #C0C0C0;
	width: 99%;
	height: 400px;
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
					alert("tes");
				} else {
					alert("tes");
				}
			});
			

$("#map").gmap3({
  map:{
    options:{
      center:{lat:-4.477856,lng:121.977537},
      zoom:4,
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
				  				  
				 window.open('<?=base_url()?>geospasial','_self');
				  
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

<!-- END GEOSPACIAL-->    
<script type="text/javascript">
function nformat2(num,curr) {				
	
	num = num.toString().replace(/\$|\,/g,'');
	if(isNaN(num))
	num = "0";
	sign = (num == (num = Math.abs(num)));
	num = Math.floor(num*100+0.50000000001);
	
	cents2 = num%100;
	num = Math.floor(num/100).toString();			
	if(cents2<10){
		cents2 = "0" + cents2;
	} 
		
	for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
	num = num.substring(0,num.length-(4*i+3))+','+
	num.substring(num.length-(4*i+3));
	
	if (curr==3){
		return num + '.' + cents3;
	} else if (curr==2){
		return num + '.' + cents2;
	} else {
		return num;
	} 
}

$(function () {
    var chart;
    
    $(document).ready(function () {
    	
    	Highcharts.visualize = function(table, options) {
            // the categories
            options.xAxis.categories = [];
            $('tbody th', table).each( function(i) {
                options.xAxis.categories.push(this.innerHTML);
            });
    
            // the data series
            options.series = [];
            $('tr', table).each( function(i) {
                var tr = this;
                $('th, td', tr).each( function(j) {
                    if (j > 0) { // skip first column
                        if (i == 0) { // get the name and init the series
                            options.series[j - 1] = {
                                name: this.innerHTML,
                                data: []
                            };
                        } else { // add values
                            options.series[j - 1].data.push(parseFloat(this.innerHTML));
                        }
                    }
                });
            });
    
            var chart = new Highcharts.Chart(options);
        }
    
        var table = document.getElementById('datatable'),
        options = {
            chart: {
                renderTo: 'container-kep1',
                type: 'column'
            },
			credits:{
				enabled: false,
			},
            title: {
                text: '<?=$title_kep1 ?>'
            },
			subtitle: {
                text: '<?=$subtitle_kep1 ?>'
            },
            xAxis: {
				title: {
                    text: 'Eselon'
                }
            },
            yAxis: {
                title: {
                    text: 'Jumlah'
                },
				labels: {
					formatter: function() {
						return nformat2(this.value,0);
					}
				},
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'						
                    },
					formatter: function() {
						return nformat2(this.total,0);
					}
                }
            },
			legend: {
				enabled: false
			},
            tooltip: {
				enabled:false,
                formatter: function() {
                    return '<b>'+ this.series.name +'</b><br/>'+
                        nformat2(this.y, 2) +' '+ this.x.toLowerCase();
                }
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0,
					stacking: 'normal'
                },series: {
					cursor: 'pointer',
					point: {
						events: {
							click: function() {
								//window.open('perumahan/kinerjaTabel/'+ this.category,'_self');
							}
						}
					}
				}				
            }
        };
    
        Highcharts.visualize(table, options);
		//END KEPEGAWAIAN
		
		//PERUMAHAN		
        var table_peru = document.getElementById('datatable_peru'),
        options_peru = {
            chart: {
                renderTo: 'container-peru',
                type: 'column'
            },
			credits:{
				enabled: false,
			},
            title: {
                text: '<?=$title_peru ?>'
            },
			subtitle: {
                text: '<?=$subtitle_peru ?>'
            },
            xAxis: {
            },
            yAxis: {
                title: {
                    text: 'Nilai (Rp. Milyar)'
                },
				labels: {
					formatter: function() {
						return nformat2(this.value,0);
					}
				},
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'						
                    },
					formatter: function() {
						return nformat2(this.total,0);
					}
                }
            },
            tooltip: {
				//enabled:false,
                formatter: function() {
                    return '<b>'+ this.series.name +'</b><br/>'+
                        nformat2(this.y, 2) +' '+ this.x.toLowerCase();
                }
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
					//stacking: 'normal'
                },series: {
					cursor: 'pointer',
					point: {
						events: {
							click: function() {
								window.open('index.php/perumahan/kinerjaTabel/'+ this.category,'_self');
							}
						}
					}
				}				
            }
        };
    
        Highcharts.visualize(table_peru, options_peru);
		//END PERUMAHAN
		
		<?php /*// Build the chart Perpustakaan
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container-perp1',
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
			credits:{
				enabled: false
			},
            title: {
                text: '<?=$title_perp1 ?>'
            },
            tooltip: {
				enabled: false,
        	    pointFormat: '{series.name}: <b>{point.percentage}%</b>',
            	percentageDecimals: 1
            },			
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
						formatter: function() {
							return nformat2(this.y,0);
						}
                    },
                    showInLegend: true
                }
            },
			 legend: {
				align: 'right',
				verticalAlign: 'top',
				x: -100,
				y: 100,
				width: 100
			},
            series: [{
                type: 'pie',
                name: 'Kategori',
                data: [
				<?php 
				
				if($rs_perp):
				$data = '';
				foreach($rs_perp as $rkey => $value): 
					$data .= "['".$rkey."',".$value."],";
				endforeach; 
				$data = substr($data,0,-1);
				endif;	
				echo $data;			                
				?>
				]
            }]
        });
		
		//PERPUSTAKAAN 2
		chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container-perp2',
                type: 'line',
                marginRight: 130,
                marginBottom: 25
            },
			credits: {
				enabled: false,
			},
            title: {
                text: '<?=$title_perp2 ?>',
                x: -20 //center
            },
            xAxis: {
                categories: [<?=$kunjungan['categories'] ?>]
            },
            yAxis: {
                title: {
                    text: 'Jumlah'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                        this.x +': '+ this.y +' orang';
                }
            },
            legend: {
				enabled: false,
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -10,
                y: 100,
                borderWidth: 0
            },
            series: [{
                name: 'Jumlah Kunjungan',
                data: [<?=$kunjungan['jml'] ?>]
            
            }]
        });*/?>
		
		//MONITORING
		Highcharts.visualize = function(table, options) {
            // the categories
            options.xAxis.categories = [];
            $('tbody th', table).each( function(i) {
                options.xAxis.categories.push(this.innerHTML);
            });
    
            // the data series
            options.series = [];
            $('tr', table).each( function(i) {
                var tr = this;
                $('th, td', tr).each( function(j) {
                    if (j > 0) { // skip first column
                        if (i == 0) { // get the name and init the series
                            options.series[j - 1] = {
                                name: this.innerHTML,
                                data: []
                            };
                        } else { // add values
                            options.series[j - 1].data.push(parseFloat(this.innerHTML));
                        }
                    }
                });
            });
    
            var chart = new Highcharts.Chart(options);
        }
    
        var table = document.getElementById('datatable_mon'),
        options = {
            chart: {
                renderTo: 'container_mon',
                type: 'column'
            },
			credits:{
				enabled: false,
			},
            title: {
                text: '<?=$title_mon?>'
            },
			subtitle: {
                text: '<?=$subtitle_mon?>'
            },
            xAxis: {
            },
            yAxis: {
                title: {
                    text: 'Jumlah Pagu'
                },
				labels: {
					formatter: function() {
						return nformat2(this.value,0);
					}
				},
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'						
                    },
					formatter: function() {
						return nformat2(this.total,0);
					}
                }
            },
            tooltip: {
				//enabled:false,
                formatter: function() {
                    return '<b>'+ this.series.name +'</b><br/>'+
                        nformat2(this.y, 2) +' '+ this.x.toLowerCase();
                }
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
					//stacking: 'normal'
                },series: {
					cursor: 'pointer',
					point: {
						events: {
							click: function() {
								window.open('<?=base_url()?>monitoring/subChart/'+ this.category+'/'+this.series.name,'_self');
							}
						}
					}
				}				
            }
        };
    
        Highcharts.visualize(table, options);	
		
    });
    
});
</script>
<script src="<?=base_url()?>assets/scripts/highchart/highcharts.js"></script>
<script src="<?=base_url()?>assets/scripts/highchart/modules/exporting.js"></script>

				<div class="flat_area grid_16">
					<h2>Dashboard
						<small>- Welcome to Executive Information System Kementerian Perumahan Rakyat.</small>
					</h2>
				</div>

<div class="box grid_8">
	<h2 class="box_head"><?=$title?></h2>
	<div id="map" class="gmap3"></div>
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
					var visibleInViewport = ( $('#map_canvas').gmap('inViewport', $(this)[0]) ) ? '<?=$r->nm_keg?>' : 'I\'m sad and hidden.';
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
                
<div class="box grid_8">
  <h2 class="box_head">Jumlah Pegawai</h2>
  
    <div id="tabs-kep1" class="block">            	
    	<div id="container-kep1" style="min-width: 300px; height: 380px; margin: 0 auto"></div>
        <h3 align="right" style="color:#4572A7; margin-top:-3px;">Jumlah total pegawai : <?=$totpeg?> &nbsp; &nbsp; </h3>
        <?=$html_kep1?>
    </div>
  
</div>                

<? /*<div class="box grid_8 tabs">
  <ul class="tab_header clearfix">
    <li><a href="#tabs-as1">Aset IT</a></li>
    <li><a href="#tabs-as2">Aset Non IT</a></li>
  </ul>
  <div class="controls">
    <a href="#" class="grabber"></a>
    <a href="#" class="toggle"></a>
    <a href="#" class="show_all_tabs"></a>
  </div>
  <div class="toggle_container">
    <div id="tabs-as1" class="block">
    
    </div>
    <div id="tabs-as2" class="block">
    
    </div>
  </div>  
</div>                */?>

<div class="box grid_8">
  <h2 class="box_head">Perumahan</h2>
  <div id="tabs-peru" class="block">
	<div id="container-peru" style="min-width: 350px; height: 300px; margin: 0 auto"></div>
    <?=$html_peru?>
  </div>
</div>                
<? /*
<div class="box grid_8 tabs">
  <ul class="tab_header clearfix">
    <li><a href="#tabs-perp1">Koleksi Perpustakaan</a></li>
    <li><a href="#tabs-perp2">Kunjungan Perpustakaan</a></li>
  </ul>
  <div class="controls">
    <a href="#" class="grabber"></a>
    <a href="#" class="toggle"></a>
    <a href="#" class="show_all_tabs"></a>
  </div>
  <div class="toggle_container">
    <div id="tabs-perp1" class="block">
      <div id="container-perp1" style="min-width: 350px; height: 300px; margin: 0 auto"></div>
    </div>
    <div id="tabs-perp2" class="block">
      <div id="container-perp2" style="min-width: 350px; height: 300px; margin: 0 auto"></div>
    </div>
  </div>  
</div>
*/ ?>
<div class="box grid_8 tabs">
  <h2 class="box_head">Pengendalian dan Evaluasi Program</h2>
  <div id="tabs-mon1" class="block">
    <div id="container_mon" style="min-width: 400px; height: 300px; margin: 0 auto"></div>
      <?=$html_mon?>      
  </div>  
</div>                


<div class="box grid_8">
  <h2 class="box_head">Schedule</h2>
    <div id="tabs-perk1" class="block" style="min-height:440px;">
	<script type="text/javascript">
        $(document).ready(function() {
            $("#tabs-perk1").eventCalendar({
                eventsjson: '<?=base_url()?>assets/files/events.json.php',
				showDescription: true
            });
        });
    </script>
    </div>
</div>                                
<script src="<?=base_url()?>assets/scripts/eventCalendar/jquery.eventCalendar.js" type="text/javascript"></script>