<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div style="width:900px"  class="flat_area grid_16">
    <div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
    <form id="fm" method="post" onSubmit="return false">
        <table> 
        <tr>
          <td width="150"><b>Aksi</b></td>
          <td width="200"><select id="aksi" name="aksi">
            <option value=""></option>
            <option value="tambah">Tambah</option>
            <option value="ubah">Ubah</option>
            <option value="hapus">Hapus</option>
          </select></td>
        </tr>         
        <tr>
          <td width="150"><b>Parent</b></td>
          <td width="200">
          	<input id="parent_id" name="parent_id" class="easyui-combotree" data-options="url:'<?=base_url()?>perumahan/tree'" style="width:700px;">            
            </select>
          </td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
          <td width="126"><b>No </b>&nbsp;</td>
          <td><input type="text" id="no" name="no" style="width:50px" ></td>
        </tr>                  
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
          <td width="126"><b>Program/Kegiatan </b>&nbsp;</td>
          <td><textarea id="nama" name="nama" style="width:450px; height:80px; border:1px solid #A4BED4"></textarea></td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
          <td width="126"><b>Sat</b>&nbsp;</td>
          <td><input type="text" id="sat" name="sat" style="width:150px" ></td>
        </tr>          
        <tr><td colspan="3">&nbsp;</td></tr>        
        <tr>
          <td width="126"><b>Status</b>&nbsp;</td>
          <td>
          <select id="posisi" name="posisi">
            <option value="">Children</option>
            <option value="parent">Parent</option>
          </select></td>
        </tr>          
        <tr>
          <td width="126"><b>Kategori</b>&nbsp;</td>
          <td>
          <select id="kategori" name="kategori">
            <option value="" checked="checked"></option>
           <?=$html?>
          </select></td>
        </tr>
		
		<tr>
			<td width="126"><b>Status-Geo</b>&nbsp;</td>
			<td>
			<select id="status" name="status">
				<option value="geo" checked="checked">Geo</option>
				<option value="non-geo">Non-Geo</option>
			</select>
			</td>
		</tr>
		</table>
        </form>
        <div region="south" border="false" style="padding:5px 0;">
            <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpan()">Simpan</a>
            <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a>
        </div>
    </div>    
</div>    
<br />&nbsp;
