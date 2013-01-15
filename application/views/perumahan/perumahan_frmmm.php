 <script src="<?php echo base_url(); ?>/jquery-1.4.1.min.js"></script>
 <link rel="stylesheet" href="/jquery-ui.css" />
    <script src="/jquery-1.8.3.js"></script>
    <script src="/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />  
  <script language="javascript">
        $(document).ready(function(){      
        $('#provinsi').change(function(){
            $.post("<?php echo base_url();?>index.php/perumahann/get_kota/"+$('#provinsi').val(),{},function(obj){
                $('#nm_kota').html(obj);
			
            });
			
		});
        });
		
 $(function() {
        $( "#tgl_kontrak" ).datepicker();
    });

	 $(function() {
        $( "#tgl_mulai" ).datepicker();
    });
	 $(function() {
        $( "#tgl_akhir" ).datepicker();
    });
	 $(function() {
        $( "#tgl_act_mulai" ).datepicker();
    });
	 $(function() {
        $( "#tgl_act_akhir" ).datepicker();
    });
	
	
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
</script>
<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div style="width:600px"  class="flat_area grid_16">
    <div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
    <form id="fm" method="post" onSubmit="return false">
    <table>
  	<tr>
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
		<td>: <select id="id_keg" name="id_keg" style="width:300px">
              <option value="">Pilih Kegiatan</option>
              <?=$html?>
            </select>
		</td>
	</tr>
		<tr>
            <td>Provinsi</td>
            <td> :
                <select name="provinsi" id="provinsi">
                <option value="">Pilih Provinsi</option>
                <?php
                    foreach ($provinsi->result() as $row)
                    echo "<option value='".$row->id."'>".$row->nm_prov."</option>";
                ?>
            </select>
                    </td>
        </tr>
        <tr>
            <td>Kota</td>
            <td> :
                <select name="nm_kota" id="nm_kota">
                <option value="">Pilih Kota</option>
            </select>
            </td>
        </tr>
    <tr>
		<td>Lokasi</td>
		<td>: <input type="text" name="lokasi" id="lokasi" size="50"/></td>
	</tr>
	<tr>
		<td>Koordinat</td>
		<td>: X - <input type="text" name="x" id="x"/></td>
	</tr>
	<tr>
		<td></td> 
		<td> &nbsp; Y - <input type="text" name="y" id="y"/></td>
	</tr>
	<!-- onKeyPress="return numbersonly(this, event)" -->
	<tr>
		<td>No. Kontrak</td>
		<td>: <input type="text" name="no_kontrak" id="no_kontrak" /></</td>
	</tr>
	<tr>
		<td>Tgl. Kontrak</td>
		<td>: <input type="text" name="tgl_kontrak" id="tgl_kontrak" /></</td>
	</tr>
	<tr>
		<td>Durasi</td>
		<td>: <input type="text" name="durasi" id="durasi" size="50" /></</td>
	</tr>
	<tr>
		<td>Tgl. Mulai</td>
		<td>: <input type="text" name="tgl_mulai" id="tgl_mulai" /></</td>
	</tr>
	<tr>
		<td>Tgl. Akhir</td>
		<td>: <input type="text" name="tgl_akhir" id="tgl_akhir" /></</td>
	</tr>
	<tr>
		<td>Tgl. Aktual Mulai</td>
		<td>: <input type="text" name="tgl_act_mulai" id="tgl_act_mulai" /></</td>
	</tr>
	<tr>
		<td>Tgl. Aktual Akhir</td>
		<td>: <input type="text" name="tgl_act_akhir" id="tgl_act_akhir" /></</td>
	</tr>
	<tr>
		<td>Progres Rencana</td>
		<td>: <input type="text" name="prog_rencana" id="prog_rencana" /></</td>
	</tr>
	<tr>
		<td>Progres Realisasi</td>
		<td>: <input type="text" name="prog_realisasi" id="prog_realisasi" /></</td>
	</tr>
	<tr>
		<td>Biaya Realisasi</td>
		<td>: <input type="text" name="biaya_realisasi" id="biaya_realisasi" /></</td>
	</tr>
	<tr>
		<td>Bulan Realisasi</td>
		<td>: <select id="bln_realisasi" name="bln_realisasi">
            <option value="">Pilih Bulan Realisasi</option>
            <option value="januari">Januari</option>
			<option value="februari">Februari</option>
			<option value="maret">Maret</option>
			<option value="april">April</option>
			<option value="mei">Mei</option>
			<option value="juni">Juni</option>
			<option value="juli">Juli</option>
			<option value="agustus">Agustus</option>
			<option value="september">September</option>
			<option value="oktober">Oktober</option>
			<option value="november">November</option>
			<option value="desember">Desember</option>
        </select></td>
	</tr>
	<tr><td>Keterangan</td>
		<td>: <textarea name="keterangan" id="keterangan"></textarea></td>
	</tr>
	<tr><td>Permasalahan dan Tindak Lanjut</td>
		<td>: <textarea name="permasalahan" id="permasalahan"></textarea></td>
	</tr>
        </table>
        </form>
		
			
        <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpann()">Simpan</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a>
    </div>
</div>    
<br />&nbsp;
