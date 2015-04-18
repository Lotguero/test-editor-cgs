gulp   = require 'gulp'
coffee = require 'gulp-coffee'

pkg    = require ('./package.json')

gulp.task 'compile-coffee', ->
	gulp.src 'src/coffee/test.coffee'
		.pipe coffee { bare: true }
		.pipe gulp.dest 'cache/.temp/js'

gulp.task 'html', ->
  gulp.src 'src/html/*.html'
    .pipe gulp.dest 'cache/.temp/'

gulp.task 'xml', ->
  gulp.src 'src/xml/*.xml'
    .pipe gulp.dest 'cache/.temp/xml/'

gulp.task 'xsl', ->
  gulp.src 'src/xsl/*.xsl'
    .pipe gulp.dest 'cache/.temp/xsl/'

gulp.task 'default', [
	'compile-coffee'
  'xsl'
  'xml'
  'html'
]
