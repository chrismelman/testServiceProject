application testServicesProject
imports webservices/services/interface

native class mine.test.CreateDropTest as CreateDrop{
	static createDropDB()	
}
// entity GlobalTime {
// 	timestamp :: DateTime
// }
// 
// var globaltime := GlobalTime{};
	define page root(){ 
		action testgetTopLevelEntities() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/getTopLevelEntities',  	data: '{}',  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}
		
		action testgetTimeStamp() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/getTimeStamp',  	data: '{}',  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data.result))},  dataType: 'JSON'});");
		}
		
		action testSyncProject1() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncProject',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: 0}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :0 } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncIssue1() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncIssue',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: 0}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :0 } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncPerson1() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncPerson',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: 0}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :0 } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncPlace1() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncPlace',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: 0}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :0 } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncProject2() {
			var time := now().getTime() + "";
			runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncProject',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: " + time + "}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :" + time + " } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncIssue2() {
			var time := now().getTime() + "";
			runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncIssue',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: " + time + "}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :" + time + " } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncPerson2() {
			var time := now().getTime() + "";
			runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncPerson',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: " + time + "}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :" + time + " } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncPlace2() {
			 var time := now().getTime() + "";
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncPlace',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: " + time + "}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :" + time + " } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncPlaceAfterEdit() {
			 var time := now().getTime() + "";
			 Place.all()[0].name := "place2";
			 sleep(1000);
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncPlace',  	data: \\\"[{ name: 'Project',  value: [{ id: '7c17fc80-719f-45af-9dfc-c65ba2a72a08', lastSynced: " + time + "}]}, { name: 'Person',  value: [{ id: '4752b4cb-87d0-4732-a517-8d6c213aa80a',  lastSynced :" + time + " } ] } ]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		
		
		action testSyncChange() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncDirtyObjects',  	data: \\\"[{ name : 'Place', value : [{ id : 'ac567323-1504-aa8c-b389-fd24672e9555', version : 2 , name : 'place3'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncChangeForce() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncDirtyObjects',  	data: \\\"[{ name : 'Place', value : [{ id : 'ac567323-1504-aa8c-b389-fd24672e9555', version : 9999 , name : 'place4'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action testSyncChangeMissingField() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncDirtyObjects',  	data: \\\"[{ name : 'TestValidation', value : [{ id : 'abbe67e0-7f80-11e2-9e96-0800200c9a66', version : 1 , testBoolean : false, testInt : 2, testFloat : 1.1, testString : 'test2'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}
		action testSyncChangeWrongInvalidString() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncDirtyObjects',  	data: \\\"[{ name : 'TestValidation', value : [{ id : 'abbe67e0-7f80-11e2-9e96-0800200c9a66', version : 2 , testBoolean : true, testInt : 5, testFloat : 1.5, testString : 'test5', testEmail : 'tesstest.org'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}
		action testSyncChangeInvalidValidation() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncDirtyObjects',  	data: \\\"[{ name : 'TestValidation', value : [{ id : 'abbe67e0-7f80-11e2-9e96-0800200c9a66', version : 2 , testBoolean : true, testInt : 500, testFloat : 1.5, testString : 'test5', testEmail : 'test@test.org'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}
		action testSyncPartlyRollback() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncDirtyObjects',  	data: \\\"[{ name : 'TestValidation', value : [{ id : 'abbe67e0-7f80-11e2-9e96-0800200c9a66', version : 2 , testBoolean : true, testInt : 805, testFloat : 1.8, testString : 'test8', testEmail : 'test8@test.org'}]},{ name : 'Place', value : [{ id : 'ac567323-1504-aa8c-b389-fd24672e9555', version : 9999 , name : 'place66'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}	
		action testNewObject() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncNewObjects',  	data: \\\"[{ name : 'TestValidation', value : [{ id : '66404a7e-86d8-4b95-a17c-7e2c67d676ce', version : 1 , testBoolean : true, testInt : 12, testFloat : 9.5, testString : 'test12', testEmail : 'test12@test.org'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}	
		action testNewObjectLinked() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncNewObjects',  	data: \\\"[{ name : 'Person', value : [{ id : '9c5bdf50-850a-11e2-9e96-0800200c9a66', typeField : 'User', version : 2, name : 'p5' , User_place : {  id : '15b0f6d1-5101-4126-9444-6037d890307c' }}]}, { name : 'Place', value : [{id : '15b0f6d1-5101-4126-9444-6037d890307c', version : 2, name : 'place99'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}
		action testNewObjectWrong() {		
		 	runscript(
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/syncNewObjects',  	data: \\\"[{ name : 'TestValidation', value : [{ id : '2d703ef0-8ce0-11e2-9e96-0800200c9a66', version : 1 , testBoolean : true, testInt : 405, testFloat : 9.5, testString : 'test12', testEmail : 'test12@test.org'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}					
		action showPlaceAjaxTemplate() {
			var place := loadPlace("ac567323-1504-aa8c-b389-fd24672e9555".parseUUID());		
		 	replace(extrainfo,showPlace(place));
		}

		action showPlaceAjaxTemplate1() {
			var place := loadPlace("15b0f6d1-5101-4126-9444-6037d890307c".parseUUID());		
		 	replace(extrainfo,showPlace(place));
		}		
		
		action showTestValidationAjaxTemplate() {
			var test := loadTestValidation("abbe67e0-7f80-11e2-9e96-0800200c9a66".parseUUID());		
		 	replace(extrainfo,showTestValidation(test));
		}
		action showTestValidationAjaxTemplateExtra1() {
			var test := loadTestValidation("66404a7e-86d8-4b95-a17c-7e2c67d676ce".parseUUID());		
		 	replace(extrainfo,showTestValidation(test));
		}
		
		action showUserAjaxTemplate() {
			var user := loadUser("9c5bdf50-850a-11e2-9e96-0800200c9a66".parseUUID());		
		 	replace(extrainfo,showUser(user));
		}	
		
		action shownrTestValidation() {
			replace(extrainfo, shownumberofTestValidation());
		}
		
		<span id="specialoutput">"" </span> 
		placeholder extrainfo{}
		submit testgetTopLevelEntities() [id := "test1"] { "test1" }
		submit testgetTimeStamp() [id := "test2"] { "test2" }
		
		submit testSyncProject1() [id := "test3"] { "test3" }
		submit testSyncIssue1() [id := "test4"] { "test4" }
		submit testSyncPerson1() [id := "test5"] { "test5" }
		submit testSyncPlace1() [id := "test6"] { "test6" }
		
		submit testSyncProject2() [id := "test7"] { "test7" }
		submit testSyncIssue2() [id := "test8"] { "test8" }
		submit testSyncPerson2() [id := "test9"] { "test9" }
		submit testSyncPlace2() [id := "test10"] { "test10" }
		
		submit testSyncPlaceAfterEdit() [id := "test11"] { "test11" }

		submit showPlaceAjaxTemplate() [id := "test12"] { "test12" }
		submit testSyncChange() [id := "test13"] { "test13" }
		
		submit testSyncChangeForce() [id := "test14"] { "test14" }
		
		submit showTestValidationAjaxTemplate() [id := "test15"] { "test15" }
		submit testSyncChangeMissingField() [id := "test16"] { "test16" }
		
		submit testSyncChangeWrongInvalidString() [id := "test17"] { "test17" }
		
		submit testSyncChangeInvalidValidation() [id := "test18"] { "test18" }
		
		submit testSyncPartlyRollback()[id := "test19"] { "test19" }

		submit testNewObject()[id := "test20"] { "test20" }
		submit showTestValidationAjaxTemplateExtra1()[id := "test21"] { "test21" }

		submit testNewObjectLinked()[id := "test22"] { "test22" }
		submit showPlaceAjaxTemplate1()[id := "test23"] { "test23" }
		submit showUserAjaxTemplate()[id := "test24"] { "test24" }
		
		submit testNewObjectWrong()[id := "test25"] { "test25" }
		submit shownrTestValidation()[id := "test26"] { "test26" }

		}
	
	entity Project {
		name :: String
		issues -> Set<Issue>
		restricted :: String
		
		synchronization configuration {
			toplevel name property :name
			restricted properties: restricted
		}
	}
	
	entity Issue {
		title :: String
		project -> Project(inverse=Project.issues)
		restricted -> Project
		
		synchronization configuration {
			restricted properties: restricted
		}
	}
	
	
	entity User : Person {
		place -> Place
		restricted :: Int
		
		synchronization configuration {
			toplevel name property :name
			restricted properties: restricted
		}
	}
	
	entity TestValidation{
		testInt :: Int (validate(testInt < 200, "not higher then 200 allowed"))
		testString :: String
		testFloat :: Float
		testBoolean :: Bool
		testEmail :: Email 
		restricted :: String
		
		synchronization configuration {
			toplevel name property : testString
			restricted properties: restricted
		}
		
	}
	
	entity Person {
		name :: String
		restricted2 -> Person
		
		synchronization configuration {
			restricted properties: restricted2
		}
	}
	
	entity Place {
		name :: String
		restricted3 -> Place
		
		synchronization configuration {
			restricted properties: restricted3
		}
	}
	
	// derive webservices for Project , with nameproperty name
	// derive webservices for User , with nameproperty name
	// derive webservices for TestValidation , with nameproperty testString

	 
	init {
	 	var project1 := Project{id := "7c17fc80-719f-45af-9dfc-c65ba2a72a08".parseUUID(),  name := "test1"};
	  	var project2 := Project{id := "949a3d74-51fe-45d8-92ea-def66dc49e08".parseUUID(), name := "test2"};
	 	project1.save();
	 	project2.save();
	 	var issue1 := Issue{id := "31232e7d-ff46-401a-8e90-146b33c7bf38".parseUUID(), title := "issue1", project:= project1};
	  	var issue2 := Issue{id := "bb62b326-0c8c-4f99-a0df-c791c43c3a50".parseUUID(), title := "issue2", project:= project1};
	  	var issue3 := Issue{id := "2e3dbf40-75c2-11e2-bcfd-0800200c9a66".parseUUID(), title := "issue3", project:= project2};
	
		var person1 := Person{id := "bcd97ac3-1394-488c-a366-fd08449e9df7".parseUUID(), name := "p1"};
		var person2 := User{id := "4752b4cb-87d0-4732-a517-8d6c213aa80a".parseUUID(), name := "p2"};
		var place1 := Place{id := "ac567323-1504-aa8c-b389-fd24672e9555".parseUUID(), name := "place1"};
		
		person1.save();
		person2.save();
		place1.save();
		
		person2.place := place1;
		
		var test := TestValidation { id := "abbe67e0-7f80-11e2-9e96-0800200c9a66".parseUUID(), testBoolean := true, testEmail := "test@test.org", testInt := 1, testFloat := 9.9, testString := "test" };
		
		test.save();
	}
	
	ajax template showPlace(p : Place) {
		
		par[id := "placeoutput1"]{ output(p.name) }
		par[id := "placeoutput2"]{ output(p.version) }
	}
	
	ajax template showTestValidation(t : TestValidation) {
		
		par[id := "testvalidationoutput1"]{ output(t.testInt) }
		par[id := "testvalidationoutput2"]{ output(t.testBoolean.toString()) }
		par[id := "testvalidationoutput3"]{ output(t.testEmail) }
		par[id := "testvalidationoutput4"]{ output(t.testFloat) }
		par[id := "testvalidationoutput5"]{ output(t.testString) }
		par[id := "testvalidationoutput6"]{ output(t.version) }

	
	}
	
	ajax template showUser(u : User) {
		
		par[id := "useroutput1"]{ output(u.name) }
		par[id := "useroutput2"]{ output(u.place.name) }
		par[id := "useroutput3"]{ output(u.version) }

	
	}
	
	ajax template shownumberofTestValidation() {
		
		par[id := "TVoutput1"]{ output(TestValidation.all().length) }
	
	}
	
	
	test testnewobjectwrong{
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test26"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("TVoutput1"))[0].getText() == "2");   

	 	
	 	var testbutton := d.findElements(SelectBy.id("test25"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[{\"id\":\"2d703ef0-8ce0-11e2-9e96-0800200c9a66\",\"errors\":[{\"message\":\"not higher then 200 allowed\",\"type\":\"error\"}],\"ent\":\"TestValidation\"}]}"); 

		var testbutton := d.findElements(SelectBy.id("test26"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("TVoutput1"))[0].getText() == "2");  

		// CreateDrop.createDropDB(); 
	}	
	
	
	test testnewobjectlinked{
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	
	 	
	 	var testbutton := d.findElements(SelectBy.id("test22"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}"); 

		var testbutton := d.findElements(SelectBy.id("test23"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place99");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "2");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test24"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("useroutput1"))[0].getText() == "p5");   
	 	assert(d.findElements(SelectBy.id("useroutput2"))[0].getText() == "place99");   
	 	assert(d.findElements(SelectBy.id("useroutput3"))[0].getText() == "2");   

		// CreateDrop.createDropDB(); 
	}	
	
	test testnewobject {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	
	 	
	 	var testbutton := d.findElements(SelectBy.id("test20"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}"); 

		var testbutton := d.findElements(SelectBy.id("test21"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "12");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "true");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test12@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "9.5");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test12");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");   
		// CreateDrop.createDropDB(); 
	}	
	
	test editPartlyRollback {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");  
	 	
	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place4");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "4");    
	 	
	 	var testbutton := d.findElements(SelectBy.id("test19"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"errors\":[{\"message\":\"not higher then 200 allowed\",\"type\":\"error\"}],\"restore\":{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"testEmail\":\"test@test.org\",\"testString\":\"test2\",\"testInt\":2,\"testBoolean\":false,\"testFloat\":1.1,\"version\":2},\"ent\":\"TestValidation\"}]}");  

	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place66");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "5");   
	 	
		var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");   
		// CreateDrop.createDropDB(); 
	}	
	
	test editsyncTriggerValidation {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");     
	 	
	 	var testbutton := d.findElements(SelectBy.id("test18"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"errors\":[{\"message\":\"not higher then 200 allowed\",\"type\":\"error\"}],\"restore\":{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"testEmail\":\"test@test.org\",\"testString\":\"test2\",\"testInt\":2,\"testBoolean\":false,\"testFloat\":1.1,\"version\":2},\"ent\":\"TestValidation\"}]}");  

		var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");   
		// CreateDrop.createDropDB(); 
	}	
	
	test editsyncWrongEmailString {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");     
	 	
	 	var testbutton := d.findElements(SelectBy.id("test17"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"errors\":[{\"message\":\"testEmail: Not a valid email address\",\"type\":\"error\"}],\"restore\":{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"testEmail\":\"test@test.org\",\"testString\":\"test2\",\"testInt\":2,\"testBoolean\":false,\"testFloat\":1.1,\"version\":2},\"ent\":\"TestValidation\"}]}");  

		var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");   
		// CreateDrop.createDropDB(); 
	}	
	
	test editsyncmissingfield {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "1");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "true");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "9.9");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "1");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test16"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"errors\":[{\"message\":\"Entity is missing property testEmail\",\"type\":\"warning\"}],\"ent\":\"TestValidation\"}]}");             
	
		var testbutton := d.findElements(SelectBy.id("test15"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("testvalidationoutput1"))[0].getText() == "2");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput2"))[0].getText() == "false");   
	 	assert(d.findElements(SelectBy.id("testvalidationoutput3"))[0].getText() == "test@test.org"); 
	 	assert(d.findElements(SelectBy.id("testvalidationoutput4"))[0].getText() == "1.1");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput5"))[0].getText() == "test2");  
	 	assert(d.findElements(SelectBy.id("testvalidationoutput6"))[0].getText() == "2");   
		// CreateDrop.createDropDB(); 
	}	
	
	test editsyncoutofdateforceupdate {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place3");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "3");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test14"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");             

	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place4");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "4"); 
		// CreateDrop.createDropDB(); 
	}	
		
	test editsyncoutofdate {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place3");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "3");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test13"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[{\"id\":\"ac567323-1504-aa8c-b389-fd24672e9555\",\"errors\":[{\"message\":\"Object already has newer version\",\"type\":\"warning\"}],\"ent\":\"Place\"}]}");             

	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place3");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "3"); 
		// CreateDrop.createDropDB(); 
	}
	
	test firsteditsync {
		var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place2");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "2");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test13"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");             

	 	var testbutton := d.findElements(SelectBy.id("test12"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("placeoutput1"))[0].getText() == "place3");   
	 	assert(d.findElements(SelectBy.id("placeoutput2"))[0].getText() == "3"); 
		// CreateDrop.createDropDB(); 
	}
	test syncentitiesafterEdit{    
	 	var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test10"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");             
	 	
	 	var testbutton := d.findElements(SelectBy.id("test11"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"ac567323-1504-aa8c-b389-fd24672e9555\",\"name\":\"place2\",\"dirty\":\"false\",\"version\":2}],\"errors\":[]}");   
	 
	 	var testbutton := d.findElements(SelectBy.id("test10"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");             
	 	
	 	var testbutton := d.findElements(SelectBy.id("test11"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");   
	 	// CreateDrop.createDropDB();          
	 
	 }
	
	test syncentitiesSecondClean{    
	 	var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test7"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");             
	 	
	 	var testbutton := d.findElements(SelectBy.id("test8"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test9"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");      
	 	
	 	var testbutton := d.findElements(SelectBy.id("test10"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[],\"errors\":[]}");      
	 	// CreateDrop.createDropDB();   
	 }
	
	test syncentitiesfirst{    
	 	var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test3"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"7c17fc80-719f-45af-9dfc-c65ba2a72a08\",\"name\":\"test1\",\"issues\":[{\"id\":\"31232e7d-ff46-401a-8e90-146b33c7bf38\"},{\"id\":\"bb62b326-0c8c-4f99-a0df-c791c43c3a50\"}],\"dirty\":\"false\",\"version\":2}],\"errors\":[]}");             
	 	
	 	var testbutton := d.findElements(SelectBy.id("test4"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"31232e7d-ff46-401a-8e90-146b33c7bf38\",\"project\":{\"id\":\"7c17fc80-719f-45af-9dfc-c65ba2a72a08\"},\"title\":\"issue1\",\"dirty\":\"false\",\"version\":1},{\"id\":\"bb62b326-0c8c-4f99-a0df-c791c43c3a50\",\"project\":{\"id\":\"7c17fc80-719f-45af-9dfc-c65ba2a72a08\"},\"title\":\"issue2\",\"dirty\":\"false\",\"version\":1}],\"errors\":[]}");   
	 	
	 	var testbutton := d.findElements(SelectBy.id("test5"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"4752b4cb-87d0-4732-a517-8d6c213aa80a\",\"typeField\":\"User\",\"name\":\"p2\",\"dirty\":\"false\",\"version\":2,\"User_place\":{\"id\":\"ac567323-1504-aa8c-b389-fd24672e9555\"}}],\"errors\":[]}");      
	 	
	 	var testbutton := d.findElements(SelectBy.id("test6"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"ac567323-1504-aa8c-b389-fd24672e9555\",\"name\":\"place1\",\"dirty\":\"false\",\"version\":1}],\"errors\":[]}");      
	 	// CreateDrop.createDropDB(); 
	 }
	
	 test gettopentities{    
	 	var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test1"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"name\":\"Project\",\"value\":[{\"id\":\"7c17fc80-719f-45af-9dfc-c65ba2a72a08\",\"name\":\"test1\"},{\"id\":\"949a3d74-51fe-45d8-92ea-def66dc49e08\",\"name\":\"test2\"}]},{\"name\":\"User\",\"value\":[{\"id\":\"4752b4cb-87d0-4732-a517-8d6c213aa80a\",\"typeField\":\"User\",\"name\":\"p2\"}]},{\"name\":\"TestValidation\",\"value\":[{\"id\":\"abbe67e0-7f80-11e2-9e96-0800200c9a66\",\"testEmail\":\"test@test.org\",\"testString\":\"test\",\"testInt\":1,\"testBoolean\":true,\"testFloat\":9.9}]}],\"errors\":[]}");       
	 	
	 	var testbutton := d.findElements(SelectBy.id("test2"))[0];    
	 	testbutton.click();   
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText().parseLong() > 1360747929138L );       
 		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText().parseLong() < now().getTime() );       
		// CreateDrop.createDropDB(); 
	 }	 