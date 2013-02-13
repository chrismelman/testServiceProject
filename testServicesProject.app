application testServicesProject
imports webservices/services/interface
	define page root(){ 
		action testgetTopLevelEntities() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/getTopLevelEntities',  	data: '{}',  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data))},  dataType: 'JSON'});");
		}
		
		<span id="specialoutput">"" </span> 
		submit test1()[id := "test1"] {"test1"}
	
		action testgetTimeStamp() {
			 runscript(
			 	"$.ajax({  type: 'PUT',  	url: '/testServicesProject/webservice/getTimeStamp',  	data: '{}',  success: function(data) { console.log(data);  $('span#specialoutput').text(JSON.stringify(data.result))},  dataType: 'JSON'});");
		}
		
		output(Issue.all().length)
		<span id="specialoutput">"" </span> 
		submit testgetTopLevelEntities()[id := "test1"] {"test1"}
		submit testgetTimeStamp()[id := "test2"] {"test2"}
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
	
		var person1 := Person{id := "bcd97ac3-1394-488c-a366-fd08449e9df7".parseUUID(), name := "p1"};
		var person2 := User{id := "4752b4cb-87d0-4732-a517-8d6c213aa80a".parseUUID(), name := "p2"};
		var place1 := Place{id := "ac567323-1504-aa8c-b389-fd24672e9555".parseUUID(), name := "place1"};
		
		person1.save();
		person2.save();
		place1.save();
		person2.place := place1;
	}
	
	 test gettopentities{    
	 	var d : WebDriver := getFirefoxDriver();        
	 	d.get(navigate(root()));   
	 	var testbutton := d.findElements(SelectBy.id("test1"))[0];    
	 	testbutton.click();    
	 	sleep(1000);
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText() == "{\"result\":[{\"name\":\"Project\",\"value\":[{\"id\":\"7c17fc80-719f-45af-9dfc-c65ba2a72a08\",\"name\":\"test1\"},{\"id\":\"949a3d74-51fe-45d8-92ea-def66dc49e08\",\"name\":\"test2\"}]},{\"name\":\"User\",\"value\":[{\"id\":\"4752b4cb-87d0-4732-a517-8d6c213aa80a\",\"typeField\":\"User\",\"name\":\"p2\"}]}],\"errors\":[]}");       
	 }	 	
	 	var testbutton := d.findElements(SelectBy.id("test2"))[0];    
	 	testbutton.click();   
	 	assert(d.findElements(SelectBy.id("specialoutput"))[0].getText().parseLong() > 1360747929138L );       
 		assert(d.findElements(SelectBy.id("specialoutput"))[0].getText().parseLong() < now().getTime() );       

	 }
	 
	 