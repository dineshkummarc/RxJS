---
title: 'RxJS'
---

doctype 5
html lang: 'en', ->
	head ->
		# Standard
		meta charset: 'utf-8'
		meta 'http-equiv': 'X-UA-Compatible', content: 'IE=edge,chrome=1'
		meta 'http-equiv': 'content-type', content: 'text/html; charset=utf-8'
		meta name: 'viewport', content: 'width=device-width, initial-scale=1'
		# text @blocks.meta.join('')

		# Document
		title @document.title
		meta name: 'description', content: @document.description or ''
		meta name: 'author', content: @document.author or ''

		# Styles
		# text @blocks.styles.join('')
		link rel: 'stylesheet', href: '/styles/style.css', media: 'screen, projection'
		link rel: 'stylesheet', href: '/styles/print.css', media: 'print'

		style type: 'text/css', "nav ol li:nth-child(#{@document.menu}) a { border: 1px solid rgba(255,255,255,0.1); }"

	body ->

		header ->
			h1 'RxJS'

			nav ->
				ol ->
					li ->
						a href: 'index.html', title: 'about', 'about'
					li ->
						a href: 'tutorial.html', title: 'try it', 'try it'
					li ->
						a href: 'download.html', title: 'download', 'download'
					li ->
						a href: 'bindings.html', title: 'bindings', 'bindings'
					li ->
						a href: 'community.html', title: 'community', 'community'

		section role: 'main', ->

			# Document
			text @content

		footer ->

		# Scripts
		# text @blocks.scripts.join('')
		script src: '/vendor/jquery-1.7.1.js'
		script src: '/vendor/modernizr-2.0.6.js'
		script src: '/vendor/underscore-1.2.3.js'
		script src: '/vendor/backbone-0.5.3.js'

		for src in @document.scripts || []
			do (s) ->
				script src: src + '.js' 
		
		script src: '/scripts/script.js'