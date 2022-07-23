<!---cartooncontroller.cfm------>

<cfscript>
	if(attributes.tabMenuController eq 0)
	{
		WOStruct = StructNew();		

		WOStruct['#attributes.fuseaction#'] = structNew();		

		WOStruct['#attributes.fuseaction#']['default'] = 'list';
		if(not isdefined('attributes.event'))
			attributes.event = WOStruct['#attributes.fuseaction#']['default'];
	
		WOStruct['#attributes.fuseaction#']['list'] = structNew();
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.cartoons';
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = '/V16/add_options/mgogebakan_w3/cartoons/views/list.cfm';	 	//listeleme ekran önyüz

		WOStruct['#attributes.fuseaction#']['add'] = structNew(); //add işlevi için WO struct yapısı ekleme
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['add']['fuseaction'] = 'sales.cartoons&event=add';
		WOStruct['#attributes.fuseaction#']['add']['filePath'] = '/V16/add_options/mgogebakan_w3/cartoons/views/add.cfm';		//add ekran önyüz
		WOStruct['#attributes.fuseaction#']['add']['queryPath'] = '/V16/add_options/mgogebakan_w3/cartoons/actions/add.cfm';	//add ekran işlevi
		WOStruct['#attributes.fuseaction#']['add']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];				//add next event

		if (isDefined("attributes.CartoonId")) {

		WOStruct['#attributes.fuseaction#']['upd'] = structNew(); //upd işlevi için WO struct yapısı ekleme
		WOStruct['#attributes.fuseaction#']['upd']['window'] = 'normal';
		WOStruct['#attributes.fuseaction#']['upd']['fuseaction'] = 'sales.cartoons&event=upd';
		WOStruct['#attributes.fuseaction#']['upd']['filePath'] = '/V16/add_options/mgogebakan_w3/cartoons/views/upd.cfm';		//upd ekran önyüz
		WOStruct['#attributes.fuseaction#']['upd']['queryPath'] = '/V16/add_options/mgogebakan_w3/cartoons/actions/upd.cfm';	//upd ekran işlevi
		WOStruct['#attributes.fuseaction#']['upd']['nextEvent'] = WOStruct['#attributes.fuseaction#']['default'];				//upd next event

		}

	}
</cfscript>
