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
	ambil_list('list',group);
}


$(document).ready(function(){
	peta_awal("petaku",1,'');
	
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
	var message = "<b>"+titlex[nomor]+"</b><br>Alamat : "+alamatx[nomor]+"<br>Keterangan:"+keteranganx[nomor];
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

<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<div class="box grid_16 tabs">
  <ul class="tab_header clearfix">
    <li><a href="#tabs-1" onclick="peta_awal('petaku',1);">DAK</a></li>
    <li><a href="#tabs-2" onclick="peta_awal('petaku2',2);">Pembangunan Rusunawa</a></li>
    <li><a href="#tabs-3" onclick="peta_awal('petaku3',3);">PSU</a></li>
  </ul>
  <div class="controls">
    <a href="#" class="grabber"></a>
    <a href="#" class="toggle"></a>
    <a href="#" class="show_all_tabs"></a>
  </div>
  <div class="toggle_container">
    <div id="tabs-1" class="block">
      <div class="section">
        <div id="petaku" style="width:100% ; height:500px"></div>
        <div class="section" id="list">&nbsp;
        </div>
      </div>  
    </div>
    <div id="tabs-2" class="block">
        <div class="section">
            <div id="petaku2" style="width:100% ; height:500px"></div>
        <div class="section" id="list2">&nbsp;
        </div>
        </div>
    </div>
    <div id="tabs-3" class="block">
        <div class="section">
            <div id="petaku3" style="width:100% ; height:500px"></div>
        <div class="section" id="list3">&nbsp;
        </div>
        </div>
    </div>
  </div>
</div>    