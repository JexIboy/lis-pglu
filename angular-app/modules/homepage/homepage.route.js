(function() {
	'use strict';

	angular
		.module('PhpMyAdmin')
		.config(function($routeProvider) {
			$routeProvider
				.when('/', {
					templateUrl: '/angular-app/modules/homepage/homepage.html',
					controller: 'HomepageController',
					controllerAs: 'vm'
				});
		});
})();