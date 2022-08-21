<!---views/add.cfm---><!---ekran önyüz----->
<cfparam name="attributes.broadcasttime" default="">
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
                <input type="text" name="broadcasttime" id="broadcasttime" value='<cfoutput>#attributes.broadcasttime#</cfoutput>'>
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

<cf_box title="AJAX_PAGE" box_page="https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons" refresh="1">
<div id="ajax_ornek"></div>
</cf_box>

<script type="text/javascript">

//AjaxPageLoad("https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons", "ajax_ornek")

    function kontrol() {
        if ($("#name").val() == ""){    //jquery val() method. buradaki kodlama sayesinde, çizgi film adı boş olduğunda, kaydet işlemi/butonu çalışmaz, alerti verir ve bu sayfada kalmaya devam eder
            alert("Çizgi film adı boş olamaz (from views/add.cfm)")
            $("#name").css("background-color", "#FAEBD7").focus()   //çizgi film adı boş olduğunda, css uygulanır ve focus işlemi gerçekleşir
            return false
        }

        //if ($("#broadcasttime").val() == ""){   
        //    $("#broadcasttime").val("14:00")    //çizgi film adı dolu olarak fakat broadcasttime boş olarak kaydet'e basılırsa, broadcasttime değeri "14:00" olarak doldurulur. Çizgi film adı boş olarak kaydet'e basılırsa, işlem "name" koşul aşamasında false olarak return olacağı için buradaki broadcasttime koşul işlemine hiç geçilmemiş olur, dolayısıyla buradaki işlemler çalışmaz.
        //    return false
        //

        //let d = new Date()
        //if (d.getDay() == 2 || d.getDay() == 3){   
        //    alert("Salı ve Çarşamba günleri ekleme yapılamaz")
        //    return false
        //}        

        return true;
    }
</script>


