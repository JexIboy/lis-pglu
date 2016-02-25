(function() {
	'use strict';

	angular
		.module('LisApp')
		.config(function($routeProvider) {
			$routeProvider
				.otherwise({
					redirectTo: '/'
				});
		});
})();