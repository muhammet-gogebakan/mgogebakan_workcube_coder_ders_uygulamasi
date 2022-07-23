<!---actions/add.cfm----><!---listeye veri ekleme fonksiyonunu çalıştırma---->

<cfparam name="attributes.CartoonId" default="2">
<cfparam name="attributes.name" default="">
<cfparam name="attributes.broadcasttime" default="">
<cfparam name="attributes.tvchannel" default="">

    <cfif len(attributes.CartoonId) eq 0>
        <script type="text/javascript">
            alert("CartoonId mevcut olmalı")
        </script>
        <cfabort>
    </cfif>

<cfobject  name="cartoonmodel" type="component" component="V16.add_options.mgogebakan_w3.cartoons.models.cartoon">
<cfset cartoonmodel.upd_func(attributes.CartoonId, attributes.name, attributes.broadcasttime, attributes.tvchannel)>      <!---listeye veri ekleme fonksiyonunu çalıştırma---->

<script type="text/javascript">
    document.location.href = "https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons"
</script>