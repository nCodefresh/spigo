'use strict';

var connect = require('gulp-connect');

module.exports = function(gulp) {
	gulp.task('serve', function() {

		gulp.task('serve', function () {
			connect.server({
				root: ['dist'],
				port: process.env.PORT,
				livereload: true,
				fallback: 'index.html'
			});
		});
	});
};
