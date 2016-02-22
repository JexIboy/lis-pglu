(function() {
	'use strict';

	angular
		.module('HomepageModule')
		.config(function($routeProvider) {
			$routeProvider
				.when('/', {
					templateUrl: '/angular-app/modules/homepage/homepage.html',
					controller: 'HomepageController',
					controllerAs: 'vm'
				});
		});
})();