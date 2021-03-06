<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div class="box grid_16 tabs">
  <ul class="tab_header clearfix">
    <li><a href="#tabs-kep1">Jumlah Pegawai Menurut Jabatan</a></li>
    <li><a href="#tabs-kep2">Jumlah Pegawai Menurut Unit Kerja</a></li>    
    <li><a href="#tabs-kep3">Absensi Kehadiran</a></li>
	<li><a href="#tabs-kep4">Sisa Pensiun</a></li>
  </ul>
  <div class="controls">
    <a href="#" class="grabber"></a>
    <a href="#" class="toggle"></a>
    <a href="#" class="show_all_tabs"></a>
  </div>
  <div class="toggle_container">  
<script type="text/javascript">
function dump(arr,level) {
	var dumped_text = "";
	if(!level) level = 0;
	
	//The padding given at the beginning of the line.
	var level_padding = "";
	for(var j=0;j<level+1;j++) level_padding += "    ";
	
	if(typeof(arr) == 'object') { //Array/Hashes/Objects 
		for(var item in arr) {
			var value = arr[item];
			
			if(typeof(value) == 'object') { //If it is an array,
				dumped_text += level_padding + "'" + item + "' ...\n";
				dumped_text += dump(value,level+1);
			} else {
				dumped_text += level_padding + "'" + item + "' => \"" + value + "\"\n";
			}
		}
	} else { //Stings/Chars/Numbers etc.
		dumped_text = "===>"+arr+"<===("+typeof(arr)+")";
	}
	return dumped_text;
}

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

function cari(){
	bln=$('#bln').val();
	thn=$('#thn').val();
	
	window.open('<?=base_url()?>kepegawaian/index/'+bln+'/'+thn+'#tabs-kep4','_self');
}
</script>
  
    <div id="tabs-kep1" class="block">
        <div class="section">
<script type="text/javascript">		
$(function () {
    var chart;
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
                renderTo: 'container2',
                type: 'column'
            },
			credits:{
				enabled: false,
			},
            title: {
                text: '<?=$title2 ?>'
            },
			subtitle: {
                text: '<?=$subtitle2 ?>'
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
});
</script>
<div id="container2" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
          <h3 align="right" style="color:#4572A7; margin-top:-3px;">Jumlah total pegawai : 
		  	<?=$totpeg?> &nbsp; &nbsp; </h3>
        <?=$html?>
        </div>
    </div>
        
    <div id="tabs-kep2" class="block">
        <div class="section">
<script type="text/javascript">
$(function () {
    var chart;
    
    $(document).ready(function () {
    	
    	// Build the chart
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container',
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
			credits:{
				enabled: false
			},
            title: {
                text: '<?=$title1 ?>'
            },
			subtitle: {
                text: '<?=$subtitle1 ?>'
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
							return this.point.name+": "+nformat2(this.y,0);
						}
                    },
                    showInLegend: true
                }/*,series: {
					cursor: 'pointer',
					point: {
						events: {
							click: function() {
								//alert(this.series.data);
								var index;
								var a = this.series.data;
								for (index = 0; index < a.length; ++index) {
								    alert(a[index]);
								}
							}
						}
					}
				}*/
            },
            series: [{
                type: 'pie',
                name: 'Kategori',				
                data: [
				<?php 
				$tot=0;
				if($rs):
				$data = '';
				foreach($rs as $r): 
					$data .= "{name:'".$r->unit_kerja."', y:".$r->jml."},";
					$tot += $r->jml;
				endforeach; 
				$data = substr($data,0,-1);
				endif;	
				echo $data;			                
				?>
				]
            }]
        });
	});
});
</script>
<div id="container" style="min-width: 300px; height: 400px; margin: 0 auto"></div>
		  </div>
      </div>      
      <div id="tabs-kep3" class="block">
          <div class="section">
         
<script type="text/javascript">	
$(function () {
    var chart;	
	<? if ($tipe=='h'){ ?>
		<?php if ($rs2){ ?>
		//STACKED KOLOM
		chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container3',
                type: 'column'
            },
			credits:{
				enabled: false,
			},
            title: {
                text: 'Absensi Kehadiran'
            },
			subtitle: {
                text: 'Menurut Unit Kerja'
            },
            xAxis: {
				<?php
				foreach ($rs2 as $r2){
					$cat[] = "'".$r2['unitkerja']."'";
				}
				
				$category = implode(", ", $cat);
				?>
                categories: [<?=$category?>]
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Jumlah Kehadiran'
                },
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                }
            },
            legend: {
                align: 'right',
                x: -100,
                verticalAlign: 'top',
                y: 20,
                floating: true,
                backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                borderColor: '#CCC',
                borderWidth: 1,
                shadow: false
            },
            tooltip: {
                formatter: function() {
                    return '<b>'+ this.x +'</b><br/>'+
                        this.series.name +': '+ this.y +'<br/>'+
                        'Total: '+ this.point.stackTotal;
                }
            },
            plotOptions: {
                column: {
                    stacking: 'normal',
                    dataLabels: {
                        enabled: true,
                        color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                    }
                },series: {
					cursor: 'pointer',
					point: {
						events: {
							click: function() {
								window.open('<?=base_url()?>kepegawaian/pegawailist/'+ this.category+'/'+this.series.name,'_self');								
							}
						}
					}
				}
				
            },
            series: [{
                name: 'Hadir',
				<?php
				foreach ($rs2 as $r2){
					$hadir[] = $r2['hadir'];
				}
				
				$data_hadir = implode(", ", $hadir);
				?>
                data: [<?=$data_hadir?>]
            }, {
                name: 'Tidak Hadir',
                <?php
				foreach ($rs2 as $r2){
					$tidak_hadir[] = $r2['tidak_hadir'];
				}
				
				$data_tdkhadir = implode(", ", $tidak_hadir);
				?>
                data: [<?=$data_tdkhadir?>]
			}, {
                name: 'Terlambat',
				<?php
				foreach ($rs2 as $r2){
					$terlambat[] = $r2['terlambat'];
				}
				
				$data_terlambat = implode(", ", $terlambat);
				?>
                data: [<?=$data_terlambat?>]		
            }]
        });
		<?php } ?>
	<?php } else if ($tipe=='m'){ ?>
		$(document).ready(function() {
	        chart = new Highcharts.Chart({
	            chart: {
	                renderTo: 'container3',
	                type: 'line',
	                marginRight: 130,
	                marginBottom: 25
	            },
				credits:{
					enabled: false,
				},
	            title: {
	                text: 'Rekapitulasi Absensi Mingguan',
	                x: -20 //center
	            },
	            subtitle: {
	                text: 'Kementerian Perumahan Rakyat',
	                x: -20
	            },
	            xAxis: {
	                categories: [<?=$rsM[1]?>]
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
	                        this.x +': '+ this.y +'orang';
	                }
	            },
	            legend: {
	                layout: 'vertical',
	                align: 'right',
	                verticalAlign: 'top',
	                x: -10,
	                y: 100,
	                borderWidth: 0
	            },
	            series: <?=$rsM[0]?>
	        });
	    });
    <?php } else if ($tipe=='b'){ ?>
		$(document).ready(function() {
	        chart = new Highcharts.Chart({
	            chart: {
	                renderTo: 'container3',
	                type: 'line',
	                marginRight: 130,
	                marginBottom: 25
	            },
				credits:{
					enabled: false,
				},
	            title: {
	                text: 'Rekapitulasi Absensi Bulanan',
	                x: -20 //center
	            },
	            subtitle: {
	                text: 'Kementerian Perumahan Rakyat',
	                x: -20
	            },
	            xAxis: {
	                categories: [<?=$rsB[1]?>]
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
	                        this.x +': '+ this.y +'orang';
	                }
	            },
	            legend: {
	                layout: 'vertical',
	                align: 'right',
	                verticalAlign: 'top',
	                x: -10,
	                y: 100,
	                borderWidth: 0
	            },
	            series: <?=$rsB[0]?>
	        });
	    });
	<?php } ?>
});
</script>
		<select name="tipe" id="tipe" style="width:150px;" onchange="window.open('<?=base_url()?>kepegawaian/absensi/'+this.value+'#tabs-kep3','_self')">
            <option value="h" >Hari ini</option>
            <option value="m" <? if ($tipe=='m'){echo 'selected';}?>>Minggu ini</option>
            <option value="b" <? if ($tipe=='b'){echo 'selected';}?>>Bulan ini</option>
          </select>
          <div id="container3" style="min-width: 300px; height: 400px; margin: 0 auto"><? if (! $rs2) echo "<center>Maaf, Data Kosong.</center>";?></div>
          </div>
          </div>
		  <div id="tabs-kep4" class="block">
          <div class="box grid_16">
			<br>
		    <center><b>REKAPITULASI JUMLAH PEJABAT STRUKTURAL<br>
			KEMENTERIAN PERUMAHAN RAKYAT<br>
( SESUAI PRAKIRAAN RENCANA PENSIUN )</b></center>
<br>&nbsp;<br>
		<div style="float:left">
		Tanggal 
		<select id="bln" name="bln"> 
		  <option value=""></option>
		  <option value="01">Januari</option>
		  <option value="02">Februari</option>
		  <option value="03">Maret</option>
		  <option value="04">April</option>
		  <option value="05">Mei</option>
		  <option value="06">Juni</option>
		  <option value="07">Juli</option>
		  <option value="08">Agustus</option>
		  <option value="09">September</option>
		  <option value="10">Oktober</option>
		  <option value="11">November</option>
		  <option value="12">Desember</option>
		</select>
		<select id="thn" name="thn">
			<option value=""></option>
		<?php
		  for ($i=date('Y');$i<date('Y')+5;$i++){
		  	echo "<option value='$i'>$i</option>";
			} 
		?>
		  	
		</select>		
		&nbsp;
		</div>
		<div>
<input type="button" id="cari" name="cari" value="Submit" onclick="cari()">
		</div><br><br>
			<?=$table_pensiun?>
			
		  </div>
		  </div>
<script src="<?=base_url()?>assets/scripts/highchart/highcharts.js"></script>
<script src="<?=base_url()?>assets/scripts/highchart/modules/exporting.js"></script>
		
		  
  </div>
</div>    