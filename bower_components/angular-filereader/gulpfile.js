'use strict';

var gulp = require('gulp');
var karma = require('gulp-karma');
var concat = require('gulp-concat');
var ngmin = require('gulp-ngmin');
var uglify = require('gulp-uglify');

/* Test files with karma */
gulp.task('karma', function() {

  return gulp.src([
    'bower_components/angular/angular.js',
    'bower_components/angular-mocks/angular-mocks.js',
    'src/*.js',
    'tests/*.js'
  ]).pipe(karma({
    configFile: 'karma.conf.js',
    action: 'watch'
  }))
  .on('error', function(err) {
    // Make sure failed tests cause gulp to exit non-zero
    throw err;
  });
});

/* Build a concat and minified version of the source files */
gulp.task('build:concat', function () {
  return gulp.src('src/*.js')
    .pipe(concat('angular-filereader.js'))
    .pipe(gulp.dest('.'));
});

gulp.task('build:minify', function () {
  return gulp.src('src/*.js')
    .pipe(ngmin())
    .pipe(uglify())
    .pipe(concat('angular-filereader.min.js'))
    .pipe(gulp.dest('.'));
});

gulp.task('build', ['build:concat', 'build:minify']);
