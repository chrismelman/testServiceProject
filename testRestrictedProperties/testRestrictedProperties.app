application testRestrictedProperties
imports webservices/services/interface

	define page root(){ "Hello world" }
	
	entity A {
		name :: String
		b :: Int
		q -> B
		synchronization configuration {
			toplevel name property : name
			restricted properties : b, q
		}
	}
	
	entity B {
		test1 -> List<A>
		test2 -> Set<A>
		test3 -> List<B> 
		test4 -> B(inverse=B.test3)
		test5 -> B 
		test6 -> List<B>(inverse=B.test5)
		test7 -> List<B> 
		test8 -> B (inverse=B.test7)
		test9 -> B 
		test10 -> List<B>(inverse=B.test9)
		
		synchronization configuration  {
			restricted properties :test4,test5,test7, test10
			
		}
	}
	
	entity C{
		a :: String
		b :: String
	    c :: String
	    bbb -> B
	    
	    synchronization configuration {
	    	restricted properties : b, bbb
	    }
	}
	
	entity D : C {
		d :: String
		e :: String
		eee -> B
		
		synchronization configuration {
	    	restricted properties : e, eee
	    }
	}