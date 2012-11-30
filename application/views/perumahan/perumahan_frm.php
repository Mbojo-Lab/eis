<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div style="width:500px"  class="flat_area grid_16">
    <div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
    <form id="fm" method="post" onSubmit="return false">
        <table>
        <tr>
          <td width="72"><b>Tahun</b></td>
          <td colspan="3"><input type="text" id="tahun" name="tahun" style="width:100px;" onchange="getDetail()"/></td>
        </tr>
        <tr>
          <td><b>Kegiatan</b></td>
          <td colspan="3">
            <select id="id_keg" name="id_keg" style="width:350px" onchange="getDetail()">
              <option value=""></option>
              <?=$html?>
            </select>
          </td>
        </tr>
        <tr>
          <td><b>Target</b></td>
          <td width="155"><input type="text" id="target" name="target" style="width:100px;" /></td>
          <td width="33"><b>Pagu</b></td>
          <td width="277"><input type="text" id="tg_anggaran" name="tg_anggaran" style="width:100px;" /></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr>
          <td><b>Realitas</b></td>
          <td><input type="text" id="realisasi" name="realisasi" style="width:100px;" /></td>
          <td><b>Pagu</b></td>
          <td><input type="text" id="re_anggaran" name="re_anggaran" style="width:100px;" /></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr>
          <td colspan="4"><b>Lokasi :</b></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr>
          <td valign="top"> - Alamat</td>
          <td colspan="3"><textarea id="alamat" name="alamat" style="width:350px;height:80px; border:1px solid #A4BED4"></textarea></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr>
          <td> - Koordinat</td>
          <td colspan="3"><b>X</b> <input type="text" id="x" name="x" style="width:155px;" />, <b>Y</b> <input type="text" id="y" name="y" style="width:155px;" /></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        </table>
        </form>
        <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpan()">Simpan</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a>
    </div>
</div>    
<br />&nbsp;
