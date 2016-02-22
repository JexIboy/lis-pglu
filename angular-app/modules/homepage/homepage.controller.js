(function() {
	'use strict';

	angular
		.module('HomepageModule')
		.controller('HomepageController', HomepageController);

	HomepageController.$inject = [];

	function HomepageController() {
		var vm = this;

		vm.dateToday = dateToday;

		function dateToday() {
			return moment().format('MMMM DD, YYYY');
		}
	}
})();