{o:o,a:a,p:p}=require "./CSON"

console.log this, this.length
value = o =>
	console.log this, "value", this.length
	p "store", o =>
		console.log this, "store", this.length
		p "book", a =>
			console.log this, "book", this.length
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
			
console.log value