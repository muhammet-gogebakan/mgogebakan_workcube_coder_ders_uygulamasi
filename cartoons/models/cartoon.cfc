<!---models/cartoon.cfc------->

<cfcomponent>

    <cfset dsn = application.systemParam.systemParam().dsn>

    <cffunction name="get_list" access="public" > <!---listeleme query fonksiyonu---->
        <cfargument name="adi" default="">
        <cfquery name="query_list" datasource="#dsn#">

            SELECT 
                * 
            FROM 
                CARTOONS
            
            WHERE
                Name LIKE <cfqueryparam cfsqltype ='CF_SQL_NVARCHAR' value='%#arguments.adi#%'>

            ORDER BY CartoonId

        </cfquery>
        <cfreturn query_list>
    </cffunction>

    <cffunction  name="add" access="public">    <!---listeye veri ekleme fonksiyonu---->
        <cfargument  name="CartoonId" default="">
        <cfargument  name="name">
        <cfargument  name="broadcasttime" default="">
        <cfargument  name="tvchannel" default="">

        <cfquery name="query_add" datasource="#DSN#">

            INSERT INTO CARTOONS
            (
            CartoonId,
            Name,
            BroadcastTime,
            TVChannel
            )
            VALUES
            (
            <cfqueryparam cfsqltype='CF_SQL_INTEGER' value='#arguments.CartoonId#'>,
            <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.name#'>,
            <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.broadcasttime#' null="#len(arguments.broadcasttime)?'no':'yes'#">,
            <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.tvchannel#' null="#len(arguments.tvchannel)?'no':'yes'#">
            )
        </cfquery>
    </cffunction>

    <cffunction name="get_row" access="public"> <!----listeyi düzenleme ekranı query fonksiyonu----->
        
        <cfargument name="CartoonId" default="">
    
        <cfquery name="query_row" datasource="#dsn#">

            SELECT 
                * 
            FROM 
                CARTOONS
            WHERE
                CartoonId = <cfqueryparam cfsqltype ='CF_SQL_NVARCHAR' value='#arguments.CartoonId#'>     <!---e_soru: cf_sql_integer'da hata veriyor ancak, CF_SQL_NVARCHAR'da hata vermiyor---->
        </cfquery>
        <cfreturn query_row>
    </cffunction>

    <cffunction name="upd_func" access="public"> <!---listeyi düzenleme fonksiyonu---->

        <cfargument  name="CartoonId" default="">
        <cfargument  name="name"  default="">
        <cfargument  name="broadcasttime" default="">
        <cfargument  name="tvchannel" default="">

        <cfquery name="query_upd" datasource="#DSN#">
            UPDATE 
                CARTOONS
            SET
                
                CartoonId = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.CartoonId#'>,
                Name = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.name#'>,
                BroadcastTime = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.broadcasttime#' null="#len(arguments.broadcasttime)?'no':'yes'#">,
                TVChannel = <cfqueryparam cfsqltype='CF_SQL_NVARCHAR' value='#arguments.tvchannel#' null="#len(arguments.tvchannel)?'no':'yes'#">
            WHERE
                CartoonId = <cfqueryparam cfsqltype ='CF_SQL_NVARCHAR' value='#arguments.CartoonId#'>
        </cfquery>

    </cffunction>

</cfcomponent>