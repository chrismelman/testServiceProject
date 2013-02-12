application testServicesProject
	define page root(){ 
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
