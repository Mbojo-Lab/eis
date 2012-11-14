<!-- Core CSS File. The CSS code needed to make eventCalendar works -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar.css">
<!-- Theme CSS file: it makes eventCalendar nicer -->
<link rel="stylesheet" href="<?=base_url()?>assets/scripts/eventCalendar/css/eventCalendar_theme_responsive.css">


<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<div class="box grid_16 tabs">
  <ul class="tab_header clearfix">
    <li><a href="#tabs-perk1">Schedule</a></li>
  </ul>
  <div class="controls">
    <a href="#" class="grabber"></a>
    <a href="#" class="toggle"></a>
    <a href="#" class="show_all_tabs"></a>
  </div>
  <div class="toggle_container">
    <div id="tabs-perk1" class="block">
		<script type="text/javascript">
            $(document).ready(function() {
                $("#tabs-perk1").eventCalendar({
                    eventsjson: '<?=base_url()?>assets/files/events.json.php', // link to events json
					dayNamesShort: [ 'Sunday','Monday','Tuesday','wednesday', 'Thursday','Friday','Saturday' ]
                });
            });
        </script>

    </div>
  </div>
</div>    
<script src="<?=base_url()?>assets/scripts/eventCalendar/jquery.eventCalendar.js" type="text/javascript"></script>