(function() {
	'use strict';

	angular
		.module('PhpMyAdmin')
		.config(function($routeProvider) {
			$routeProvider
				.otherwise({
					redirectTo: '/'
				});
		});
})();