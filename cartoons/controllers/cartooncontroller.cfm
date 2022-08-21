<!---cartooncontroller.cfm------> 

<!----burada yapılan tanımlamalar, cfscript haricinde, cfml ile de yapılabilir (cfset, cfif)---->
<cfscript>
	if(attributes.tabMenuController eq 0)
	{
		WOStruct = StructNew();		

		WOStruct['#attributes.fuseaction#'] = structNew();		

		WOStruct['#attributes.fuseaction#']['default'] = 'list';	//<!---default event 'list' olarak tanımlama. bu tanımlama sayesinde, ilk açılışta views/list.cfm sayfası gelir. eğer 'add' olarak tanımlasaydık views/add.cfm sayfası gelirdi ---->
		if(not isdefined('attributes.event'))
			attributes.event = WOStruct['#attributes.fuseaction#']['default'];		//<!---attributes'dan event gelmedi ise 'list' olarak tanımladığımız default event'i tanımlama----->
	
		WOStruct['#attributes.fuseaction#']['list'] = structNew();	//'list' event'ına struct tanımlama
		WOStruct['#attributes.fuseaction#']['list']['window'] = 'normal';	//window parametresi ile hangi ekranda görüneceğini tanımlama
		WOStruct['#attributes.fuseaction#']['list']['fuseaction'] = 'sales.cartoons';	//burda fuseaction tekrar belirtiliyor ki doğru bir şekilde çalışsın
		WOStruct['#attributes.fuseaction#']['list']['filePath'] = '/V16/add_options/mgogebakan_w3/cartoons/views/list.cfm';	 	//listeleme ekran önyüz, hangi dosyayı çekeceğini tanımlama. 'sales.cartoons' çağrıldığı zaman ulaşaçağı dosyayı tanımlama. controller gelen fuseaction 'sales.cartoons' ile burada tanımlanan dosyayı eşleştirir. 

		WOStruct['#attributes.fuseaction#']['add'] = structNew(); //'add' event'ına struct tanımlama
		WOStruct['#attributes.fuseaction#']['add']['window'] = 'normal';	//window parametresi ile hangi ekranda görüneceğini tanımlama
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
