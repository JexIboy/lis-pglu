(function() {
	'use strict';

	angular
		.module('OrdinancesModule')
		.config(function($routeProvider) {
			$routeProvider
				.when('/ordinances', {
					templateUrl: '/angular-app/modules/ordinances/ordinances.html',
					controller: 'OrdinancesController',
					controllerAs: 'vm'
				});
		});
})();