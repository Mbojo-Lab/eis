<html>    
  <head> 
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/scripts/maps/gmap3.js"></script> 
    <style>
      .gmap3{
        margin: 20px auto;
        border: 1px dashed #C0C0C0;
        width: 100%;
        height: 500px;
      }
    </style>
    <script type="text/javascript">
      
    $(function(){

$("#test1").gmap3({
  map:{
    options:{
      center:{lat:-4.477856,lng:121.977537},
      zoom:5,
      mapTypeId: google.maps.MapTypeId.TERRAIN
    }
  },
  polygon: {
    values: [
      {
	        options:{
	          strokeColor: "#FF0000",
	          strokeOpacity: 0.8,
	          strokeWeight: 2,
	          fillColor: "#FF0000",
	          fillOpacity: 0.35,
	          paths:[
	              [-6.184246, 107.598266],
	              [-6.085936,106.983032],
	              [-6.959144,106.400757],
				  [-7.406048,106.51062],
				  [-7.830731,108.33435],
	              [-7.710992,108.773803],
				  [-6.83917,108.751831]
	          ]
	        },onces:{
	            click: function(polygon, event){
				  	
	              var vertices = polygon.getPath(),
	                contentString = 'Bermuda Triangle Polygon</br>Clicked Location: ' + event.latLng.lat() + ',' + event.latLng.lng() + '</br>';
	              
	              for(var i=0; i<vertices.length; i++){
	                var xy = vertices.getAt(i);
	                contentString += '<br>Coordinate ' + i + ' : ' + xy.lat() +', ' + xy.lng();
	              }
	      
	              $(this).gmap3({
	                infowindow:{
	                  options:{
	                    content: contentString,
	                    position:event.latLng
	                  }
	                }
	              });
	            }
	          }	
      },
      {
        options:{
          strokeColor: "#FF0000",
          strokeOpacity: 0.8,
          strokeWeight: 2,
          fillColor: "#FF0000",
          fillOpacity: 0.35,
          paths:[
            [37.33522435930639,-97.7783203125],
            [37.33522435930639,-85.8251953125],
            [29.420460341013133,-86.3525390625],
            [23.120153621695614,-97.0751953125]
          ]
        }
      },
      {
        options:{
          strokeColor: "#FF0000",
          strokeOpacity: 0.8,
          strokeWeight: 2,
          fillColor: "#FF0000",
          fillOpacity: 0.35,
          paths:[
            [21.002471054356725,-52.4267578125],
            [28.34306490482549,-47.1533203125],
            [17.35063837604883,-35.7275390625],
            [11.049038346537106,-49.0869140625],
            [8.276727101164045,-61.2158203125]
          ]
        }
      },
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
			
/*      $('#test1').gmap3({
        map:{
          options:{
            center:{lat:-4.477856,lng:121.977537}, 
            zoom:5, 
            mapTypeId: google.maps.MapTypeId.TERRAIN 
          }
        },
        polygon: {
		  values: {
		  	options:{
	            strokeColor: "#FF0000",
	            strokeOpacity: 0.8,
	            strokeWeight: 2,
	            fillColor: "#FF0000",
	            fillOpacity: 0.35,
	            paths:[
	              [-6.184246, 107.598266],
	              [-6.085936,106.983032],
	              [-6.959144,106.400757],
				  [-7.406048,106.51062],
				  [-7.830731,108.33435],
	              [-7.710992,108.773803],
				  [-6.83917,108.751831]
	            ]
	          },
	          onces:{
	            click: function(polygon, event){
	              var vertices = polygon.getPath(),
	                contentString = 'Bermuda Triangle Polygon</br>Clicked Location: ' + event.latLng.lat() + ',' + event.latLng.lng() + '</br>';
	              
	              for(var i=0; i<vertices.length; i++){
	                var xy = vertices.getAt(i);
	                contentString += '<br>Coordinate ' + i + ' : ' + xy.lat() +', ' + xy.lng();
	              }
	      
	              $(this).gmap3({
	                infowindow:{
	                  options:{
	                    content: contentString,
	                    position:event.latLng
	                  }
	                }
	              });
	            }
	          }	
		  }          
        }
      });*/

    });
    </script>
  </head>
    
  <body>
    <div id="test1" class="gmap3"></div>
  </body>
</html>