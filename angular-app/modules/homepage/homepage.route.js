(function() {
	'use strict';

	angular
		.module('HomepageModule')
		.config(function($stateProvider) {
			$stateProvider
				.state('home', {
					url: "/",
					templateUrl: '/angular-app/modules/homepage/homepage.html',
					controller: 'HomepageController',
					controllerAs: 'vm',
					resolve: {
						resolutions: function (ResolutionsService) {
							return ResolutionsService
									.fetchResolutions()
									.then(
										function (data) {
											ResolutionsService.setResolutions(data.data);
											ResolutionsService.sanitizeData();
											return ResolutionsService.getResolutions();
										}
									);			
						},
						ordinances: function (OrdinancesService) {
							return OrdinancesService
									.fetchOrdinances()
									.then(
										function (data) {
											OrdinancesService.setOrdinances(data.data);
											OrdinancesService.sanitizeData();
											return OrdinancesService.getOrdinances();
										}
									);
						}
					}
				});
		});
})();