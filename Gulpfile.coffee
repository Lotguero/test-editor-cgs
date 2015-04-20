gulp   = require 'gulp'
coffee = require 'gulp-coffee'
watch  = require 'gulp-watch'
pkg    = require './package.json'

gulp.task 'coffee', ->
	gulp.src 'src/coffee/*.coffee'
		.pipe coffee { bare: true }
		.pipe gulp.dest 'cache/.temp/js'

gulp.task 'watch-coffee', ->
	gulp.watch 'src/coffee/*.coffee', ->
		gulp.start 'coffee'

gulp.task 'html', ->
  gulp.src 'src/html/*.html'
    .pipe gulp.dest 'cache/.temp/'

gulp.task 'watch-html', ->
	gulp.watch 'src/html/*.html', ->
		gulp.start 'html'

gulp.task 'xml', ->
  gulp.src 'src/xml/*.xml'
    .pipe gulp.dest 'cache/.temp/xml/'

gulp.task 'watch-xml', ->
	gulp.watch 'src/xml/*.xml', ->
		gulp.start 'xml'

gulp.task 'xsl', ->
  gulp.src 'src/xsl/*.xsl'
    .pipe gulp.dest 'cache/.temp/xsl/'

gulp.task 'watch-xsl', ->
	gulp.watch 'src/xsl/*.css', ->
		gulp.start 'xsl'

gulp.task 'css', ->
  gulp.src ['src/css/*.css', '!src/css/*_flymake.css']
    .pipe gulp.dest 'cache/.temp/css/'

gulp.task 'watch-css', ->
	gulp.watch 'src/css/*.css', ->
		gulp.start 'css'

gulp.task 'default', [
	'coffee'
  'xsl'
  'xml'
  'html'
  'css'
]

gulp.task 'clean', ->
	del "cache/.temp"

gulp.task 'watch', [
  'watch-coffee'
  'watch-html'
  'watch-xml'
  'watch-xsl'
  'watch-css'
  ]
