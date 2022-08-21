<!---extends/greeting.cfm----->

Merhaba 
<cfoutput>
    #session.ep.name# #session.ep.surname#
</cfoutput>

<!---<cfif session.ep.name eq "Muhammet">
    Sizin bu ekrana giriş yetkiniz yok<cfabort>
</cfif>

<cfif not isDefined("attributes.adi") or attributes.adi eq ''>
    <cfset attributes.adi = "hero">
</cfif>
--->