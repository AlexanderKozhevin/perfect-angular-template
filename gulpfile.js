var gulp = require('gulp');

var $ = require('gulp-load-plugins')();

var connect = $.connect;
var concat = require('gulp-concat');
var jade = require('jade');
var compressor = require('gulp-compressor');

var jslibs = [
  "bower_components/angular/angular.min.js",
  "bower_components/angular-route/angular-route.min.js",
  "bower_components/angular-file-upload/angular-file-upload.min.js",
  "bower_components/angular-filereader/angular-filereader.min.js",
  "bower_components/angular-loading-bar/build/loading-bar.min.js",
  "bower_components/angular-sanitize/angular-sanitize.min.js",
  "bower_components/angular-scroll-glue/source/scrollglue.js",
  "bower_components/angular-strap/dist/angular-strap.min.js",
  "bower_components/angular-strap/dist/angular-strap.tpl.min.js",
  "bower_components/angular-ui-router/release/angular-ui-router.min.js",
  "bower_components/angular-ui-tree/dist/angular-ui-tree.min.js",
  "bower_components/es5-shim/es5-shim.min.js",
  "bower_components/lodash/lodash.min.js",
  "bower_components/restangular/dist/restangular.min.js",
  "bower_components/jquery/dist/jquery.min.js",
  "bower_components/bootstrap/dist/js/bootstrap.min.js"

];



var csslibs = [
  "bower_components/angular-loading-bar/build/loading-bar.min.css",
  "bower_components/angular-ui-tree/dist/angular-ui-tree.min.css"
];



gulp.task('connect', function() {
  connect.server({
    root: 'production',
    livereload: true,
    fallback: 'production/assets/index.html'
  });
});


gulp.task('watch', function(){
  gulp.watch('source/styles/**/*.scss', ['sass']);
  gulp.watch(['source/views/**/*.jade', 'source/*.jade'], ['jade']);
  gulp.watch('source/app/**/*.coffee', ['coffee']);
});


gulp.task('jade', function() {
	return gulp.src(['source/**/*.jade', 'source/*.jade'])
	.pipe($.jade())
	.pipe(gulp.dest('production/assets'))
	.pipe(connect.reload());
});

gulp.task('sass',  function() {
	return gulp.src('source/styles/**/*.scss')
	.pipe($.sass({ errLogToConsole: true, sourceComments: 'map', sourceMap: 'sass'}))
	.pipe(gulp.dest('production/assets/css'))
	.pipe(connect.reload());
});


gulp.task('compress', function() {
  gulp.src('production/assets/js/libs.js')
    .pipe($.uglify())
    .pipe(gulp.dest('production/assets/js/golibs.js'))
});

gulp.task('coffee', function() {
  gulp.src('source/app/**/*.coffee')
    .pipe($.coffee())
    .pipe(concat('app.js'))
    .pipe(gulp.dest('production/assets/js'))
    .pipe(connect.reload());
});

gulp.task('jslibs', function() {
  gulp.src(jslibs)
    .pipe(concat('libs.js'))
    .pipe(gulp.dest('production/assets/js'))
});



gulp.task('csslibs', function() {
  gulp.src(csslibs)
    .pipe(concat('libs.css'))
    .pipe(gulp.dest('production/assets/css'))
});


gulp.task('getrich', function(){
var str = "";

str += "─────────███─────────\n"
str += "─────────█$█─────────\n"
str += "─────█████$██████────\n"
str += "───███████$████████──\n"
str += "──████████$████████──\n"
str += "─█████████$████████──\n"
str += "─███████─█$█──████───\n"
str += "─███████─█$█─────────\n"
str += "─█████████$█─────────\n"
str += "─█████████$█████─────\n"
str += "──████████$███████───\n"
str += "────██████$█████████─\n"
str += "───────███$█████████─\n"
str += "─────────█$█─████████\n"
str += "─────────█$█──███████\n"
str += "──████───█$█──███████\n"
str += "─█████████$█████████─\n"
str += "██████████$█████████─\n"
str += "─█████████$████████──\n"
str += "───███████$██████────\n"
str += "─────────█$█─────────\n"
str += "─────────███─────────\n"

console.log(str)
})

gulp.task('libs', ['jslibs', 'csslibs'])
gulp.task('compile', ['libs', 'sass', 'jade', 'coffee'])
gulp.task('server', ['compile', 'watch', 'connect', 'getrich']);


gulp.task('default', ['server']);
