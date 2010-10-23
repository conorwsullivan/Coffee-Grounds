exports.p = (property,value) ->
	if typeof(value)=="undefined"
		value=property
		property=undefined
	if not property
		if this.length
			property=this.length
		else
			throw new Error("No property name provided, or property name was not string/number")
	this.property=value

exports.o = (value) ->
	result={}
	value.call result
	result

exports.a = (value) ->
	result=[]
	value.call result
	result