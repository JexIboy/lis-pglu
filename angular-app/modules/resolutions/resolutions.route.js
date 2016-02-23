(function() {
	'use strict';

	angular
		.module('ResolutionsModule')
		.config(function($routeProvider) {
			$routeProvider
				.when('/resolutions', {
					templateUrl: '/angular-app/modules/resolutions/resolutions.html',
					controller: 'ResolutionsController',
					controllerAs: 'vm'
				});
		});
})();