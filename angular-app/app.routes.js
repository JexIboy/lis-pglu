(function() {
	'use strict';

	angular
		.module('LisApp')
		.config(function($stateProvider, $urlRouterProvider) {

			$urlRouterProvider.otherwise("/");
		});
})();