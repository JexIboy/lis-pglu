(function() {
	'use strict';

	angular
		.module('OrdinancesModule')
		.service('OrdinancesService', OrdinancesService);

	OrdinancesService.$inject = ['$http', '$q'];

	function OrdinancesService($http, $q) {
		var raw_ordinances = [];
		var final_ordinances = [];

		this.setOrdinances = setOrdinances;
		this.getOrdinances = getOrdinances;
		this.fetchOrdinances = fetchOrdinances;
		this.sanitizeData = sanitizeData;

		function fetchOrdinances(){
			var defer = $q.defer();

			$http({
				url: '/angular-app/data/ordinances.json',
				method: 'GET'
			})
			.success(function(data) {
				defer.resolve(data);
			})
			.error(function(error) {
				defer.reject(error);
			});

			return defer.promise;
		}

		function setOrdinances(data) {
			raw_ordinances = data;
		}

		function getOrdinances() {
			return final_ordinances;
		}

		function sanitizeData() {
			var temp_ordinances = [];

			for (var count = 0, r_length = raw_ordinances.length; count < r_length; count++) {
				temp_ordinances.push({
					ord_no : raw_ordinances[count].ord_no,
					subj_matter : raw_ordinances[count].subj_matter,
					author : raw_ordinances[count].author,
					date_passed : moment(raw_ordinances[count].date_passed).format('MMM DD, YYYY'),
				});
			}

			final_ordinances = temp_ordinances;
		}
	}
})();