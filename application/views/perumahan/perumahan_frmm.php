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
  	<tr><br>
		<td>Tahun Anggaran</td>
		<td>: <input type="text" name="tahun" id="tahun"/></td>
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
		<td>Kegiatan</td>
		<td>: <select id="id_keg" name="id_keg" style="width:350px">
              <option value="">Pilih Kegiatan</option>
              <?=$html?>
            </select>
		</td>
	</tr>
		<tr>
            <td>Provinsi</td>
            <td>: 
                <select name="provinsi" id="provinsi">
                <option value="">Pilih Provinsi</option>
                <?php
                    foreach ($provinsi->result() as $row)
                    echo "<option value='".$row->nm_prov."'>".$row->nm_prov."</option>";
                ?>
            </select>
                    </td>
    </tr>
	<tr>
		<td>Volume</td>
		<td>: <input type="text" name="volume" id="volume" onKeyPress="return numbersonly(this, event)"/></td>
	</tr>
	<tr>
		<td>Satuan</td>
		<td>: <input type="text" name="satuan" id="satuan"/></</td>
	</tr>
	<tr>
		<td>Nilai (Rp. )</td>
		<td>: <input type="text" name="nilai" id="nilai" onKeyPress="return numbersonly(this, event)"/></</td>
	</tr>
        </table>
        </form><br>
        <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpan()">Simpan</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a>
    </div>
</div>    
<br />&nbsp;
