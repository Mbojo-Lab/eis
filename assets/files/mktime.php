<?php
//mktime(hour,minute,second,month,day,year,is_dst);


echo $date=(mktime(6,30,0,11,25,2012)*1000)-(3600*6*1000);

//echo $initTime = (intval(microtime($date))*1000)."<br>";
//echo $initTime = ((intval(microtime(true))*1000)-7200000+$date);
?>