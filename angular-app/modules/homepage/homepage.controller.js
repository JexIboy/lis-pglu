(function() {
	'use strict';

	angular
		.module('PhpMyAdmin')
		.controller('HomepageController', HomepageController);

	HomepageController.$inject = [];

	function HomepageController() {
		var vm = this;

		vm.selected = [];

		vm.query = {
			order: 'name',
			limit: 5,
			page: 1
		};

		function getDesserts(query) {
			vm.promise = $nutrition.desserts.get(query, success).$promise;
		}

		function success(desserts) {
			vm.desserts = desserts;
		}

		vm.onPaginate = function (page, limit) {
			getDesserts(angular.extend({}, vm.query, {page: page, limit: limit}));
		};

		vm.onReorder = function (order) {
			getDesserts(angular.extend({}, vm.query, {order: order}));
		};
	}
})();