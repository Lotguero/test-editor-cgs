gulp   = require 'gulp'
coffee = require 'gulp-coffee'

pkg    = require ('./package.json')

gulp.task 'compile-coffee', ->
	gulp.src 'src/coffee/test.coffee'
		.pipe coffee { bare: true }
		.pipe gulp.dest 'cache/.temp/js'

gulp.task 'default', [
	'compile-coffee'
]
