$ ->
	delay = null
	editor = CodeMirror.fromTextArea document.getElementById('code'),
		lineWrapping: true
		onChange: ->
			console.log '!'
			clearTimeout delay
			delay = setTimeout updateOutput, 300

	editor.setOption 'theme', 'monokai'

	handleChange = ->
		console.log '!'
		clearTimeout delay
		delay = setTimeout updateOutput, 300

	updateOutput = ->
		source = editor.getValue()
		result = eval source
		console.log result

	delay = setTimeout updateOutput, 300
