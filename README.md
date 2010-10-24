Coffee Grounds - Bracket-free method of building JSON in CoffeeScript

SYNOPSIS
--------
	{o:o,a:a,p:p}=require "CSON"

	value = o ->
		p "store", o ->
			p "book", a ->
				p o ->
					p "category", "reference"
					p "author", "Nigel Rees"
					p "title", "Sayings of the Century"
					p "price", 8.95
				p o -> 
					p "category", "fiction"
					p "author", "Evelyn Waugh"
					p "title", "Sword of Honour"
					p "price", 12.99
				p o ->
					p "category", "fiction"
					p "author", "Herman Melville"
					p "title", "Moby Dick"
					p "isbn", "0-553-21311-3"
					p "price", 8.99
				p o ->
					p "category", "fiction"
					p "author", "J. R. R. Tolkien"
					p "title", "The Lord of the Rings"
					p "isbn", "0-395-19395-8"
					p "price", 22.99
			p "bicycle", o ->
				p "color", "red"
				p "price", 19.95
			
equivelent to, in JSON: 

	value = { "store": {
		"book": [ 
		  { "category": "reference",
			"author": "Nigel Rees",
			"title": "Sayings of the Century",
			"price": 8.95
		  },
		  { "category": "fiction",
			"author": "Evelyn Waugh",
			"title": "Sword of Honour",
			"price": 12.99
		  },
		  { "category": "fiction",
			"author": "Herman Melville",
			"title": "Moby Dick",
			"isbn": "0-553-21311-3",
			"price": 8.99
		  },
		  { "category": "fiction",
			"author": "J. R. R. Tolkien",
			"title": "The Lord of the Rings",
			"isbn": "0-395-19395-8",
			"price": 22.99
		  }
		],
		"bicycle": {
		  "color": "red",
		  "price": 19.95
		}
	  }
	}

DESCRIPTION
-----------
	p is a function that injects a property into an object, or pushes a value onto an array.  It takes two arguments.  
	
	p [propertyName,] value
	
	propertyName is any number or string.  value is any javascript value, such as the result of o or a.
	
	If propertyName is not specified, and the current context is an array, it pushes that value onto the array.  
	If the current context is not an array, an error is thrown.
	
---
	o builds an object.  It then calls the function specified as the first parameter.  
	This can be any Javascript function, but usually it will just be a series of calls to p, each p adding a property.  
	Every p must have a propertyName specified.
	
---
	a builds an array.  It then calls the function specified as the first parameter.  
	This can be any Javascript function, but usually it will just be a series of calls to p, each p pushing a value.  
	Generally, each p will not a propertyName specified, but you can specify if you like.
