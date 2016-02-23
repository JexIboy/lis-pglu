(function() {
	'use strict';

	angular
		.module('HomepageModule')
		.config(function($routeProvider) {
			$routeProvider
				.when('/', {
					templateUrl: '/angular-app/modules/homepage/homepage.html',
					controller: 'HomepageController',
					controllerAs: 'vm',
					resolve: {
						resolutions: function (ResolutionsService) {
							var resolutions = ResolutionsService.getResolutions();

							if (_.isEmpty(resolutions)) {
								return ResolutionsService
										.fetchResolutions()
										.then(
											function (data) {
												ResolutionsService.setResolutions(data.data);
												ResolutionsService.sanitizeData();
												return ResolutionsService.getResolutions();
											}
										);
							} else {
								return ResolutionsService.getResolutions();
							}							
						},
						ordinances: function (OrdinancesService) {
							var ordinances = OrdinancesService.getOrdinances();

							if (_.isEmpty(ordinances)) {
								return OrdinancesService
										.fetchOrdinances()
										.then(
											function (data) {
												OrdinancesService.setOrdinances(data.data);
												OrdinancesService.sanitizeData();
												return OrdinancesService.getOrdinances();
											}
										);
							} else {
								return OrdinancesService.getOrdinances();
							}	
						}
					}
				});
		});
})();