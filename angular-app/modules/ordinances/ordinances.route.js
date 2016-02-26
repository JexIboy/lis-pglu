(function() {
	'use strict';

	angular
		.module('OrdinancesModule')
		.config(function($stateProvider) {
			$stateProvider
				.state('ordinances', {
					templateUrl: '/angular-app/modules/ordinances/ordinances.html',
					controller: 'OrdinancesController',
					controllerAs: 'vm'
				});
		});
})();