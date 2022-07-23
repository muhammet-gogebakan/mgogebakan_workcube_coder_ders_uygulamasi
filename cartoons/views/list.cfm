<!---list.cfm---><!---listeyi düzenleme linki eklendi--->

<cfobject name="cartoonmodel" type="component" component="V16.add_options.mgogebakan_w3.cartoons.models.cartoon">
  <cfset cartoondata=cartoonmodel.get_list()>

    <cf_box title="Çizgi Filmler"><!---- hide_table_column="1" uidrop="" draggable="" add_href="" list_href="" collapsable="" closable="" box_page="" resize=""---->

      <cf_box_search>
      </cf_box_search>

      <cf_grid_list>
        <thead>
          <tr>
            <th>ID</th>
            <th>Adı</th>
            <th>Yayın Saati</th>
            <th>Yayın Kanalı</th>
            <th>(boş)</th>
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
              <a href="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons&event=upd&id=#CartoonId#"><i class="fa fa-pencil"></i></a>
            </td>
            </tr>
          </cfoutput>
        </tbody>
      </cf_grid_list>
      
    </cf_box> 


