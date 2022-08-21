<cfcomponent rest="true" restpath="cartoonservice">

    <cffunction  name="getlist" access="remote" returnType="string" httpmethod="GET" restpath="getlist" produces="application/json">

        <cfobject name="cartoonmodel" type="component" component="V16.add_options.mgogebakan_w3.cartoons.models.cartoon">
        <cfset cartoonlist = cartoonmodel.getlist()>
        <cfset result = arrayNew(1)>
        <cfloop from="1" to="#cartoonlist.recordcount#" index="i">
            <cfset arrayAppend(result, queryGetRow(cartoonlist, i))>
        </cfloop>

        <cfreturn replace(serializeJSON(result),"//","")>

    </cffunction>

    <cffunction  name="add" access="remote" returnType="string" httpmethod="POST" restpath="add" produces="application/json">
        <cfargument  name="name" type="string" restargsource="Form">
        <cfargument  name="broadcasttime" type="string" restargsource="Form">
        <cfargument  name="tvchannel" type="string" restargsource="Form">

        <cfobject name="cartoonmodel" type="component" component="V16.add_options.mgogebakan_w3.cartoons.models.cartoon">
        <cfset cartoonlist.add(argumentCollection = arguments)>

        <cfreturn "tamam">

    </cffunction>

</cfcomponent>
