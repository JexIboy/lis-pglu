(function() {
	'use strict';

	angular
		.module('CommunicationsModule')
		.config(function($stateProvider) {
			$stateProvider
				.state('communications', {
					templateUrl: '/angular-app/modules/communications/communications.html',
					controller: 'CommunicationsController',
					controllerAs: 'vm'
				});
		});
})();