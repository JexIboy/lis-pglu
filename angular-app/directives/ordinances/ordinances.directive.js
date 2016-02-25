(function() {
	'use strict';

	angular
		.module('LisApp')
		.directive('ordinances', ordinances);

	ordinances.$inject = ['$filter'];

	function ordinances($filter) {

		var ordinances = {
			link: link,
			restrict: 'E',
			templateUrl: '/angular-app/directives/resolutions/resolutions.html',
			scope: {
				ordinances: '=?'
			}
		};

		return ordinances;

		function link(scope, element, attrs) {
			scope.pagination = {
				isEnabled: true,
				rowsPerPageValues: [10 , 25, 50, 100]
			};

			scope.tableOpts = {
				'data': scope.ordinances,
				'table-row-id-key': 'id',
				'column-keys': [
					'ord_no',
					'subj_matter',
					'author',
					'date_passed'
				]
			};

			scope.$watch('ordinance_query', function (ordinance_query){
				scope.filteredOrdinances = $filter('filter')(scope.ordinances, ordinance_query);

				angular.forEach(scope.filteredOrdinances, function(ordinance, index) {
					scope.filteredOrdinances[index].date_passed = moment(moment.unix(ordinance.date_passed)).format('MMM DD, YYYY');
				});

				scope.tableOpts.data = scope.filteredOrdinances;
			});
		}
	}
})();