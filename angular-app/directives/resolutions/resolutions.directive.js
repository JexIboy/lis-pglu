(function() {
	'use strict';

	angular
		.module('LisApp')
		.directive('resolutions', resolutions);

	resolutions.$inject = ['$filter'];

	function resolutions($filter) {

		var resolutions = {
			link: link,
			restrict: 'E',
			templateUrl: '/angular-app/directives/resolutions/resolutions.html',
			scope: {
				resolutions: '=?'
			}			
		};

		return resolutions;

		function link(scope, element, attrs) {
			scope.pagination = {
				isEnabled: true,
				rowsPerPageValues: [10 , 25, 50, 100]
			};

			scope.tableOpts = {
				'data': scope.resolutions,
				'table-row-id-key': 'id',
				'column-keys': [
					'res_no',
					'subj_matter',
					'author',
					'date_passed'
				]
			};

			scope.$watch('resolution_query', function (resolution_query){
				scope.filteredResolutions = $filter('filter')(scope.resolutions, resolution_query);

				angular.forEach(scope.filteredResolutions, function(resolutions, index) {
					scope.filteredResolutions[index].date_passed = moment(moment.unix(resolutions.date_passed)).format('MMM DD, YYYY');
				});

				scope.tableOpts.data = scope.filteredResolutions;
			});
		}
	}
})();