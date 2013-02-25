application testServicesProject
imports webservices/services/interface

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
			 		"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice_generated_syncDirtyObjects',  	data: \\\"[{ name : 'Place', value : [{ id : 'ac567323-1504-aa8c-b389-fd24672e9555', version : 2 , name : 'place3'}]}]\\\",  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");

		}
		
		action showPlaceAjaxTemplate() {
			var place := loadPlace("ac567323-1504-aa8c-b389-fd24672e9555".parseUUID());		
		 	replace(extrainfo,showPlace(place));
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


		}
	
	entity Project {
		name :: String
		issues -> Set<Issue>
	}
	
	entity Issue {
		title :: String
		project -> Project(inverse=Project.issues)
	}
	
	entity User : Person {
		place -> Place
	}
	
	entity Person {
		name :: String
	}
	
	entity Place {
		name :: String
	}
	
	derive webservices for Project , with nameproperty name
	derive webservices for User , with nameproperty name

	 
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
	}
	
	ajax template showPlace(p : Place) {
		
		par[id := "placeoutput1"]{ output(p.name) }
		par[id := "placeoutput2"]{ output(p.version) }
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
		CreateDrop.createDropDB(); 
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
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"4752b4cb-87d0-4732-a517-8d6c213aa80a\",\"typeField\":\"User\",\"Person_name\":\"p2\",\"dirty\":\"false\",\"version\":2,\"User_place\":{\"id\":\"ac567323-1504-aa8c-b389-fd24672e9555\"}}],\"errors\":[]}");      
	 	
	 	var testbutton := d.findElements(SelectBy.id("test6"))[0]; 
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"id\":\"ac567323-1504-aa8c-b389-fd24672e9555\",\"name\":\"place1\",\"dirty\":\"false\",\"version\":1}],\"errors\":[]}");      
	 	  
	 }
	
	 test gettopentities{    
	 	var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test1"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"name\":\"Project\",\"value\":[{\"id\":\"7c17fc80-719f-45af-9dfc-c65ba2a72a08\",\"name\":\"test1\"},{\"id\":\"949a3d74-51fe-45d8-92ea-def66dc49e08\",\"name\":\"test2\"}]},{\"name\":\"User\",\"value\":[{\"id\":\"4752b4cb-87d0-4732-a517-8d6c213aa80a\",\"typeField\":\"User\",\"Person_name\":\"p2\"}]}],\"errors\":[]}");       
	 	
	 	var testbutton := d.findElements(SelectBy.id("test2"))[0];    
	 	testbutton.click();   
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText().parseLong() > 1360747929138L );       
 		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText().parseLong() < now().getTime() );       

	 }
	 
	 