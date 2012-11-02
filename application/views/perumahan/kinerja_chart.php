<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<style type="text/css">
.tblright{
	border-collapse:collapse;
	background-color:#fff;	
}
.tblright tr th{
	border:1px solid #000;
	padding:2px;
	background-color:#82CDE6;
}
.tblright tr td{
	border:1px solid #000;
	border-collapse:collapse;
	padding:2px;
}
.trcolor {
	background-color:#d9d9d9;
}
</style>
<script src="<?=base_url()?>assets/scripts/highchart/highcharts.js"></script>
<script src="<?=base_url()?>assets/scripts/highchart/modules/exporting.js"></script>

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
	
	/*cents3 = num%1000;
	num = Math.floor(num/1000).toString();			
	if(cents3<10){
		cents3 = "00" + cents3;
	} else if(cents3<100) {
		cents3 = "0" + cents3;
	}*/
	
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
    // On document ready, call visualize on the datatable.
    $(document).ready(function() {
        /**
         * Visualize an HTML table using Highcharts. The top (horizontal) header
         * is used for series names, and the left (vertical) header is used
         * for category names. This function is based on jQuery.
         * @param {Object} table The reference to the HTML table to visualize
         * @param {Object} options Highcharts options
         */
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
                renderTo: 'container',
                type: 'column'
            },
			credits:{
				enabled: false,
			},
            title: {
                text: '<?=$title ?>'
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
								window.open('perumahan/kinerjaTabel/'+ this.category,'_self');
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

<div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
<?=$html ?>
<br />&nbsp;