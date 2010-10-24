setup= ->
	context={}
	contextStack=[]
	
	pushContextStack= (value) ->
		contextStack.push(context)
		context=value
	
	popContextStack= ->
		oldContext = context
		context=contextStack.pop()
		oldContext

	exports.p = (property,value) ->
		if typeof(value)=="undefined"
			value=property
			property=undefined
		if not property
			if typeof(context.length)=="number"
				property=context.length
			else
				throw new Error("No property name provided, or property name was not string/number")
		context[property]=value

	exports.o = (value) ->
		pushContextStack {}
		value()
		return popContextStack()

	exports.a = (value) ->
		pushContextStack []
		value()
		return popContextStack()
		
setup()