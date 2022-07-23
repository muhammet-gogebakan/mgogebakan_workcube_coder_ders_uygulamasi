<!---views/add.cfm---><!---ekran önyüz----->

<cf_box title="Yeni Çizgi Film">
    <cfform name="form1" method="post">
        <div class="form-group col col-6 col-md-6 col-sm-6 col-xs-12" id="item-CartoonId">
            <div class="col col-3 col-md-3 col-sm-3 col-xs-12">
                <label>CartoonId</label>
            </div>
            <div class="col col-6 col-md-6 col-sm-6 col-xs-9">
                <input type="text" name="CartoonId" id="CartoonId">
            </div>
        </div>
        <div class="form-group col col-6 col-md-6 col-sm-6 col-xs-12" id="item-name">
            <div class="col col-3 col-md-3 col-sm-3 col-xs-12">
                <label>Çizgi Film</label>
            </div>
            <div class="col col-6 col-md-6 col-sm-6 col-xs-9">
                <input type="text" name="name" id="name">
            </div>
        </div>
        <div class="form-group col col-6 col-md-6 col-sm-6 col-xs-12" id="item-broadcasttime">
            <div class="col col-3 col-md-3 col-sm-3 col-xs-12">
                <label>Yayın Saati</label>
            </div>
            <div class="col col-6 col-md-6 col-sm-6 col-xs-9">
                <input type="text" name="broadcasttime" id="broadcasttime">
            </div>
        </div>
        <div class="form-group col col-6 col-md-6 col-sm-6 col-xs-12" id="item-tvchannel">
            <div class="col col-3 col-md-3 col-sm-3 col-xs-12">
                <label>Yayın Kanalı</label>
            </div>
            <div class="col col-6 col-md-6 col-sm-6 col-xs-9">
                <input type="text" name="tvchannel" id="tvchannel">
            </div>
        </div>    
        <cf_box_footer>
            <cf_workcube_buttons is_upd="0" add_function="kontrol()">
        </cf_box_footer>
    </cfform>
</cf_box>

<script type="text/javascript">
    function kontrol() {
        return true;
    }
</script>