module.exports = ->
	[
		module.exports.helpers.makeUnary "negate", "float", "float", ((value) -> -value), (platform, cache, value) -> "-(" + (module.exports.codeCache platform, cache, value) + ")"
		module.exports.helpers.makeUnorderedBinary "add", "float", "float", ((a, b) -> a + b), (platform, cache, value) -> "(" + (module.exports.codeCache platform, cache, value.properties.a) + ") + (" + (module.exports.codeCache platform, cache, value.properties.b) + ")"
		module.exports.helpers.makeOrderedBinary "subtract", "float", "float", ((a, b) -> a - b), (platform, cache, value) -> "(" + (module.exports.codeCache platform, cache, value.properties.a) + ") - (" + (module.exports.codeCache platform, cache, value.properties.b) + ")"
		module.exports.helpers.makeUnorderedBinary "multiply", "float", "float", ((a, b) -> a * b), (platform, cache, value) -> "(" + (module.exports.codeCache platform, cache, value.properties.a) + ") * (" + (module.exports.codeCache platform, cache, value.properties.b) + ")"
		module.exports.helpers.makeOrderedBinary "divide", "float", "float", ((a, b) -> a / b), (platform, cache, value) -> "(" + (module.exports.codeCache platform, cache, value.properties.a) + ") / (" + (module.exports.codeCache platform, cache, value.properties.b) + ")"
	]

module.exports.codeCache = require "./../codeCache"
module.exports.helpers = require "sunruse-influx-platforms-helpers"