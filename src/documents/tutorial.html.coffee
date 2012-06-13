---
title: 'Try RxJS'
layout: 'default'
menu: 4
scripts: ['vendor/rx.min','vendor/CodeMirror/codemirror','vendor/CodeMirror/javascript','scripts/tutorial']
---
link rel: 'stylesheet', href: '/vendor/CodeMirror/codemirror.css', media: 'screen, projection'
link rel: 'stylesheet', href: '/vendor/CodeMirror/monokai.css', media: 'screen, projection'

h1 'Interactive Tutorial'

form ->
	textarea id:'code', name:'code', autofocus:'true', ->
		''' // type some javascript here '''