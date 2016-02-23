(function() {
	'use strict';

	angular
		.module('HomepageModule')
		.controller('HomepageController', HomepageController);

	HomepageController.$inject = ['$scope', 'resolutions', 'ordinances'];

	function HomepageController($scope, resolutions, ordinances) {
		var vm = this;
		
		vm.slide_images = [
			'002.jpg',
			'003.jpg',
			'004.jpg',
			'005.jpg',
			'006.jpg',
			'007.jpg',
			'008.jpg',
			'009.jpg',
			'010.jpg',
			'011.jpg',
		];

		vm.dateToday = dateToday;		

		vm.pagination = {
			isEnabled: true,
			rowsPerPageValues: [10 , 25, 50, 100]
		};

		vm.resolutions = resolutions;
		vm.ordinances = ordinances;
		vm.moment = moment;

		function dateToday() {
			return moment().format('MMMM DD, YYYY');
		}
	}
})();	