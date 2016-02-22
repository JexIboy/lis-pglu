(function() {
	'use strict';

	angular
		.module('PhpMyAdmin')
		.config(function($routeProvider) {
			$routeProvider
				.when('/communications', {
					templateUrl: '/angular-app/modules/communications/communications.html',
					controller: 'CommunicationsController',
					controllerAs: 'vm'
				});
		});
})();