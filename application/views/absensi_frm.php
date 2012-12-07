<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>

<script type="text/javascript">
$(function(){	
	
	$("#w").panel({
		title:"<?=$NmMenu?>",
		width:400,
		height:250,
		top:0,
		left:0,
		buttons:"#dlg-buttons",
		collapsible:false,
		minimizable:false,
		maximizable:false
	});
});
</script>
<div class="flat_area grid_16">
	<?php if ($hasil!=""){?>
	<div class="alert" style="background-color:#3D8336; width:390px">
	 <img height="24" width="24" src="<?=base_url()?>assets/images/icons/small/white/alert_2.png">
     <?=$hasil?>
    </div>
    <?php }?>                            
    <div id="w" style="padding:20px;">
    <form id="frm" action="<?=base_url()?>assets/files/proses_abs.php" method="post" enctype="multipart/form-data">
    <table>
    <tr>
      <td width="100">
    Tanggal</td><td>: <input type="text" id="tgl" name="tgl" class="easyui-datebox" style="width:150px;">
      </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
      <td>
    File Excel (2003) </td><td>: <input type="file" id="datax" name="datax" />
    </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
      <td colspan="2">
    <input name="upload" type="submit" value="Import" style="display:none" />
    
    <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onClick="$('#frm').submit()">Upload</a>  
      </td>
    </tr>
    </table>
    </form>
    </div> 
</div>   
&nbsp;<br />&nbsp; 