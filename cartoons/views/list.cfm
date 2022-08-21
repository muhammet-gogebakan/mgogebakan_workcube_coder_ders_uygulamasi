<!---list.cfm---><!---listeyi düzenleme linki eklendi--->

<cfparam name="attributes.adi" default="">

<cfobject name="cartoonmodel" type="component" component="V16.add_options.mgogebakan_w3.cartoons.models.cartoon">
  <cfset cartoondata=cartoonmodel.get_list(attributes.adi)>
    <cf_box title="CARTOONS"><!---- hide_table_column="1" uidrop="" draggable="" add_href="" list_href="" collapsable="" closable="" box_page="" resize=""---->

     
        <!----<i class="fa fa-plus"><a id="ui-plus" href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons&event=add" class="ui-btn ui-btn-gray"></i>--->
        <div style="float:right; margin-bottom:10px;">
          <button>
            <a class="fa fa-plus ui-btn ui-btn-gray" href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons&event=add"></a>
          </button>
        </div>
      <cf_box_search>
        <cfform>
        <div class="form-group" id="item-adi">
          <label class="col col-4 col-xs-12">Adı</label>
          <div class="col col-4 col-xs-12">
            <input type="text" name="adi" id="adi" value="<cfoutput>#attributes.adi#</cfoutput>">
          </div>
          <cf_wrk_search_button>
        </div>
        </cfform>
      </cf_box_search>

      <cf_grid_list>
        <thead>
          <tr>
            <th>ID Nu</th>
            <th>Adı</th>
            <th>Yayın Saati</th>
            <th>Yayın Kanalı</th>
            <th>(düzenle)</th>
          </tr>
        </thead>
        <tbody>
          <cfoutput query="cartoondata">
            <tr>
            <td>#CartoonId#</td>
            <td>#Name#</td>
            <td>#BroadcastTime#</td>
            <td>#TVChannel#</td>
            <td>
              <a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons&event=upd&CartoonId=#CartoonId#"><i class="fa fa-pencil"></i></a> 
              <!---buradaki http ile "CartoonId=#CartoonId#" ile "CartoonId" değeri tanımlanmış oluyor. views/upd.cfm ekranını incele ---->
              <!---burada tanımlı sales.cartoons&event=upd fuseaction'ı, controller.cfm üzerinden views/upd.cfm dosyasının görüntülenmesini sağlıyor---->
            </td>
            </tr>
          </cfoutput>
        </tbody>
      </cf_grid_list>
      
    </cf_box>



