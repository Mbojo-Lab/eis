<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div class="box grid_16">
  <h2 class="box_head">Jumlah Pegawai</h2>
  
    <div id="tabs-kep1" class="block">
        <div class="section">
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
							return nformat2(this.y,0);
						}
                    },
                    showInLegend: true
                }
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
					$data .= "['".$r->unit_kerja."', ".$r->jml."],";
					$tot += $r->jml;
				endforeach; 
				$data = substr($data,0,-1);
				endif;	
				echo $data;			                
				?>
				]
            }]
        });
		
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
		
		<?php if ($rs2){ ?>
		//STACKED KOLOM
		chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container3',
                type: 'column'
            },
            title: {
                text: 'Absensi Kehadiran'
            },
            xAxis: {
				<?php
				foreach ($rs2 as $r2){
					$cat[] = "'".$r2['jabatan']."'";
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
		
		
    });
    
});
</script>
<script src="<?=base_url()?>assets/scripts/highchart/highcharts.js"></script>
<script src="<?=base_url()?>assets/scripts/highchart/modules/exporting.js"></script>
		<table style="width:100%">
        <tr>
        <td style="border-right:1px #D6D6D6 solid">
		  <div id="container" style="min-width: 300px; height: 400px; margin: 0 auto"></div>
        </td>
        <td>
          <div id="container2" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
          <h3 align="right" style="color:#4572A7; margin-top:-3px;">Jumlah total pegawai : <?=$tot?> &nbsp; &nbsp; </h3>
        <?=$html?>
        </td>
        </tr>
        <tr style="background-color:#333" height="2"><td colspan="2"></td>
        </tr>
        <tr>
          <td colspan="2"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          <select name="tipe" id="tipe" style="width:150px;" onchange="window.open('<?=base_url()?>kepegawaian/absensi/'+this.value,'_self')">
            <option value="h" >Hari ini</option>
            <option value="m" <? if ($tipe=='m'){echo 'selected';}?>>Minggu ini</option>
            <option value="b" <? if ($tipe=='b'){echo 'selected';}?>>Bulan ini</option>
          </select>
          <div id="container3" style="min-width: 300px; height: 400px; margin: 0 auto"><? if (! $rs2) echo "<center>Maaf, Data Kosong.</center>";?></div>
          </td>
        </tr>
        </table>
    </div>
  </div>
</div>    