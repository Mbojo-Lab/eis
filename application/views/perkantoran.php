<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar.css">
<!-- Theme CSS file: it makes eventCalendar nicer -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar_theme_responsive.css">


<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<div class="box grid_16">
  <h2 class="box_head">Schedule</h2>
  
  <div id="tabs-perk1" class="block">
		<script type="text/javascript">
            $(document).ready(function() {
                $("#tabs-perk1").eventCalendar({
                    eventsjson: '<?=base_url()?>assets/files/events.json.php', // link to events json
					dayNamesShort: [ 'Sunday','Monday','Tuesday','wednesday', 'Thursday','Friday','Saturday' ],
					showDescription: true
                });
            });
        </script>
  </div>
</div>    
<script src="<?=base_url()?>assets/scripts/eventCalendar/jquery.eventCalendar.js" type="text/javascript"></script>