<SCRIPT TYPE="text/javascript">
<!--
// copyright 1999 Idocs, Inc. http://www.idocs.com
// Distribute this script freely but keep this notice in place
function numbersonly(myfield, e, dec)
{
var key;
var keychar;

if (window.event)
key = window.event.keyCode;
else if (e)
key = e.which;
else
return true;
keychar = String.fromCharCode(key);

// control keys
if ((key==null) || (key==0) || (key==8) ||
(key==9) || (key==13) || (key==27) )
return true;

// numbers
else if ((("0123456789").indexOf(keychar) > -1))
return true;

// decimal point jump
else if (dec && (keychar == "."))
{
myfield.form.elements[dec].focus();
return false;
}
else
return false;
}

//-->
</SCRIPT>
<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div style="width:500px"  class="flat_area grid_16">
    <div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
    <form id="fm" method="post" onSubmit="return false">
    <table>
  	<tr>
		<td>Tahun Program</td>
		<td>: <input type="text" name="tahun" id="tahun"/></td>
	</tr>
	<tr><br>
		<td>Jenis Kegiatan</td>
		<td>: <select name="jenis_keg" id="jenis_keg">
				<option value="">Pilih Jenis Kegiatan</option>
				<option value="Swakelola">Swakelola</option>
				<option value="Kontraktual">Kontraktual</option>
			  </select>
		</td>
	</tr>
	<tr>
		<td>Nama Kegiatan</td>
		<td>: <input type="text" name="nama_keg" id+"nama_keg" style="width:350px" ></textarea>
		</td>
	</tr>
	<tr>
		<td>Anggaran</td>
		<td>: <input type="text" name="anggaran" id="anggaran" onKeyPress="return numbersonly(this, event)"/></td>
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
                <select name="bagian" id="bagian">
                <option value="">Pilih Unit Bagian</option>
            </select>
            </td>
        </tr>
          
        <script language="javascript">
        $(document).ready(function(){      
        $('#unit_kerja').change(function(){
            $.post("<?php echo base_url();?>index.php/monitoring/get_bagian/"+$('#unit_kerja').val(),{},function(obj){
                $('#bagian').html(obj);
			
            });
			
		});
        });
        </script>
	
        </table>
        </form>
        <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpan()">Simpan</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a>
    </div>
</div>    
<br />&nbsp;
