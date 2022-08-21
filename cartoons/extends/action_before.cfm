<!---extends/action_before.cfm---->

<cfif isDefined("attributes.event") and attributes.event eq "add">
<cfif isDefined("attributes.broadcasttime") and attributes.broadcasttime eq "22:00">
    <script type="text/javascript">
        alert("Bu kadar geç bir saatte çizgi film izlenmemeli!")
        document.location.href = "https://catalyst.cosmetica.com.tr/index.cfm?fuseaction=sales.cartoons&event=add"
    </script>
    <cfabort>
</cfif>
</cfif>

