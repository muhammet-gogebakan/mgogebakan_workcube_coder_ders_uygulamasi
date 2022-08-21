<!---actions/add.cfm----><!---listeye veri ekleme fonksiyonunu çalıştırma---->

<cfparam name="attributes.CartoonId" default="">
<cfparam name="attributes.name" default="">
<cfparam name="attributes.broadcasttime" default="">
<cfparam name="attributes.tvchannel" default="">

    <cfif len(attributes.name) eq 0>
        <script type="text/javascript">
            alert("Çizgi film adı boş olamaz")
        </script>
        <cfabort>
    </cfif>

<cfobject  name="cartoonmodel" type="component" component="V16.add_options.mgogebakan_w3.cartoons.models.cartoon">
<cfset cartoonmodel.add(attributes.CartoonId, attributes.name, attributes.broadcasttime, attributes.tvchannel)>      <!---listeye veri ekleme fonksiyonunu çalıştırma---->

<script type="text/javascript">
    document.location.href = "https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons"
</script>


