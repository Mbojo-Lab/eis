<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar.css">
<!-- Theme CSS file: it makes eventCalendar nicer -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar_theme_responsive.css">
<!-- GEO SPACIAL-->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
var peta;
var pertama = 0;
var tanda1;
var tanda2;
var jenis = "Adsl";
var noregx = new Array();
var titlex = new Array();
var groupx = new Array();
var alamatx = new Array();
var keteranganx = new Array();
var almpopx = new Array();
var rectangle;
var i;
var petak;
var url;
var gambar_tanda;
var nomor;
function peta_awal(id,group,no){
    var bandung = new google.maps.LatLng(-6.9128, 107.6206);
	var kemenpera = new google.maps.LatLng(-6.237256219278669,106.79896159467694);
	var awal = new google.maps.LatLng(<?=$rs[0]->x?>,<?=$rs[0]->y?>);
    var petaoption = {
        zoom: 14,
        center: awal,
        mapTypeId: google.maps.MapTypeId.ROADMAP
        };
    peta = new google.maps.Map(document.getElementById(id),petaoption);
    ambildatabase(group,no);
	//ambil_list('list',group);
}


$(document).ready(function(){
	peta_awal("petaku",39,'');
	
});

function ambildatabase(group,no){
	url = "<?=base_url()?>index.php/geospasial/ambildata/"+group+"/"+no;
    //window.open(url,'_blank');
    $.ajax({
        url: url,
        dataType: 'json',
        cache: false,
        success: function(msg){
            for(i=0;i<msg.wilayah.petak.length;i++){
				titlex[i] = msg.wilayah.petak[i].title;
				alamatx[i] = msg.wilayah.petak[i].alamat;
				keteranganx[i] = msg.wilayah.petak[i].keterangan;
                
				//alert(alamatx[i]);
				var point = new google.maps.LatLng(
                    parseFloat(msg.wilayah.petak[i].x),
                    parseFloat(msg.wilayah.petak[i].y));
                tanda = new google.maps.Marker({
                    position: point,
                    map: peta
                });
                setinfo(tanda,i);

            }
        }
    });
}

function setinfo(petak, nomor){
	//var message = "<b>"+titlex[nomor]+"</b><br>Alamat : "+alamatx[nomor]+"<br>Keterangan:"+keteranganx[nomor];
	var message = "<b>"+alamatx[nomor]+"</b>";
	var infowindow = new google.maps.InfoWindow(
	  { content: message,
		size: new google.maps.Size(50,50)
	  });
	google.maps.event.addListener(petak, 'mouseover', function() {
	infowindow.open(peta,petak);
	});
}

function ambil_list(id,group){
	$('#'+id).load('<?=base_url()?>/index.php/geospasial/ambil_list/'+group);
}
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
		
		// Build the chart Perpustakaan
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
        });
		//END PERPUSTAKAAN
		
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

				<div class="box grid_8 tabs">
					<ul class="tab_header clearfix">
						<li><a href="#tabs-1" onclick="peta_awal('petaku',39);">DAK</a></li>
    <li><a href="#tabs-2" onclick="peta_awal('petaku2',8);">Pembangunan Rusunawa</a></li>
    <li><a href="#tabs-3" onclick="peta_awal('petaku3',11);">PSU</a></li>
					</ul>
					<div class="controls">
						<a href="#" class="grabber"></a>
						<a href="#" class="toggle"></a>
						<a href="#" class="show_all_tabs"></a>
					</div>
					<div class="toggle_container">
						<div id="tabs-1" class="block">
                          <div class="section">
                            <div id="petaku" style="width:100% ; height:292px"></div>
                          </div>  
                        </div>
                        <div id="tabs-2" class="block">
                            <div class="section">
                                <div id="petaku2" style="width:100% ; height:292px"></div>
                            </div>
                        </div>
                        <div id="tabs-3" class="block">
                            <div class="section">
                                <div id="petaku3" style="width:100% ; height:292px"></div>
                            </div>
                        </div>
					</div>
				</div>
                
<div class="box grid_8">
  <h2 class="box_head">Jumlah Pegawai</h2>
  
    <div id="tabs-kep1" class="block">            	
    	<div id="container-kep1" style="min-width: 300px; height: 300px; margin: 0 auto"></div>
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

<div class="box grid_8 tabs">
  <ul class="tab_header clearfix">
    <li><a href="#tabs-mon1">Kegiatan Swakelola</a></li>
    <li><a href="#tabs-mon2">Kontraktual</a></li>
  </ul>
  <div class="controls">
    <a href="#" class="grabber"></a>
    <a href="#" class="toggle"></a>
    <a href="#" class="show_all_tabs"></a>
  </div>
  <div class="toggle_container">
    <div id="tabs-mon1" class="block">
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
        <?php $no=1; foreach ($rsMon1 as $r){  ?>
            <tr class="gradeX">
                <td align="center"><?=$no?></td>
                <td><?=$r->nama_keg?></td>
                <td align="right"><?=number_format($r->anggaran)?></td>
            </tr>
        <?php $no += 1;} ?>
        </tbody>
    	</table>
      </div>
    </div>
    <div id="tabs-mon2" class="block">
    	<div id="dt2" class="no_margin">
        <table class=" datatable">
        <thead>
            <tr>
                <th width="30">NO.</th>
                <th>NAMA KEGIATAN</th>
                <th>PAGU</th>
            </tr>
        </thead>
        <tbody>
        <?php $no=1; foreach ($rsMon2 as $r){  ?>
            <tr class="gradeX">
                <td align="center"><?=$no?></td>
                <td><?=$r->nama_keg?></td>
                <td align="right"><?=number_format($r->anggaran)?></td>
            </tr>
        <?php $no += 1;} ?>
        </tbody>
    	</table>
      </div>
    </div>
  </div>  
</div>                
