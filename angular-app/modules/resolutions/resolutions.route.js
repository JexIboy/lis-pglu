(function() {
	'use strict';

	angular
		.module('ResolutionsModule')
		.config(function($stateProvider) {
			$stateProvider
				.state('resolutions', {
					templateUrl: '/angular-app/modules/resolutions/resolutions.html',
					controller: 'ResolutionsController',
					controllerAs: 'vm'
				});
		});
})();