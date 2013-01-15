<div class="flat_area grid_16">
    <h2><?=$title?></h2>
</div>
        <script src="<?php echo base_url(); ?>assets/js/jquery-1.4.1.min.js">
<script type="text/javascript" language="javascript">
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
    <form id="frm" action="<?=base_url()?>assets/files/proses.php" method="post" enctype="multipart/form-data">
    <table>
    <tr>
      <td width="100">
    Tahun Program</td><td>: <input type="text" id="tahun" name="tahun" class="easyui-numberbox" style="width:50px;">
      </td>
    </tr>
    <tr>
            <td>Unit Kerja</td>
            <td>: 
                <select name="unit_kerja" id="unit_kerja">
                <option value="">Pilih Unit Kerja</option>
                <?php
                    foreach ($unit_kerja->result() as $row)
                    echo "<option value='".$row->unit_kerja."'>".$row->keterangan."</option>";
                ?>
            </select>
                    </td>
        </tr>
        <tr>
            <td>Unit Bagian</td>
            <td>: 
                <select name="unit_bagian" id="unit_bagian">
                <option value="">Pilih Unit Bagian</option>
            </select>
            </td>
        </tr>
          
        <script language="javascript">
        $(document).ready(function(){      
        $('#unit_kerja').change(function(){
            $.post("<?php echo base_url();?>index.php/monitoring/get_bagian/"+$('#unit_kerja').val(),{},function(obj){
                $('#unit_bagian').html(obj);
			
            });
			
		});
        });
        </script>
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