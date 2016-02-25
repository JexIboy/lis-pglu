(function() {
	'use strict';

	angular
		.module('HomepageModule')
		.controller('HomepageController', HomepageController);

	HomepageController.$inject = ['$scope', '$filter', 'resolutions', 'ordinances'];

	function HomepageController($scope, $filter, resolutions, ordinances) {
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

		vm.dateToday = moment().format('MMMM DD, YYYY');
		vm.resolutions = resolutions;
		vm.ordinances = ordinances;		

		vm.hideSeries = hideSeries;

		(function () {
			vm.monthlyChartObject = {
				type: "LineChart",
				displayed: false,
				data: {
					"cols": [
						{
							id: "month",
							label: "Month",
							type: "string"
						},
						{
							id: "resolutions-id",
							label: "Resolutions",
							type: "number"
						}, 
						{
							id: "ordinances-id",
							label: "Ordinances",
							type: "number"
						}
					],
					"rows": []
				},
				options: {
					"title": "Monthly Resolutions and Ordinances Report",
					"colors": ['#0000FF', '#009900', '#CC0000', '#DD9900'],
					"defaultColors": ['#0000FF', '#009900', '#CC0000', '#DD9900'],
					"isStacked": "true",
					"fill": 20,
					"displayExactValues": true,
					"vAxis": {
						"title": "No. of Resolutions and Ordinances Passed",
						"gridlines": {
							"count": 10
						}
					},
					"hAxis": {
						"title": "Months"
					}
				},
				view: {
					columns: [0, 1, 2]
				}
			};

			var months = moment.months();

			for (var count = 0, length = months.length; count < length; count++) {
				vm.monthlyChartObject.data.rows.push({
					c: [
						{v: months[count]},
						{v: getLengthCollectionByMonth(months[count] + ' ' + moment().format('YYYY'), vm.resolutions, 'date_passed', 'MMMM YYYY')},
						{v: getLengthCollectionByMonth(months[count] + ' ' + moment().format('YYYY'), vm.ordinances, 'date_passed', 'MMMM YYYY')}
					]
				});
			}
		})();

		(function () {
			var reso_last_year = moment(moment.unix($filter('orderBy')(vm.resolutions).pop().date_passed)).format('YYYY') * 1;
			var ordi_last_year = moment(moment.unix($filter('orderBy')(vm.ordinances).pop().date_passed)).format('YYYY') * 1;
			var lowest_year = reso_last_year < ordi_last_year ? reso_last_year : ordi_last_year;

			vm.yearlyChartObject = {
				type: "LineChart",
				displayed: false,
				data: {
					"cols": [
						{
							id: "month",
							label: "Month",
							type: "string"
						},
						{
							id: "resolutions-id",
							label: "Resolutions",
							type: "number"
						}, 
						{
							id: "ordinances-id",
							label: "Ordinances",
							type: "number"
						}
					],
					"rows": []
				},
				options: {
					"title": "Monthly Resolutions and Ordinances Report",
					"colors": ['#0000FF', '#009900', '#CC0000', '#DD9900'],
					"defaultColors": ['#0000FF', '#009900', '#CC0000', '#DD9900'],
					"isStacked": "true",
					"fill": 20,
					"displayExactValues": true,
					"vAxis": {
						"title": "No. of Resolutions and Ordinances Passed",
						"gridlines": {
							"count": 10
						}
					},
					"hAxis": {
						"title": "Months"
					}
				},
				view: {
					columns: [0, 1, 2]
				}
			};

			while(lowest_year <= (moment().format('YYYY') * 1)) {

				vm.yearlyChartObject.data.rows.push({
					c: [
						{v: lowest_year},
						{v: getLengthCollectionByMonth(lowest_year, vm.resolutions, 'date_passed', 'YYYY')},
						{v: getLengthCollectionByMonth(lowest_year, vm.ordinances, 'date_passed', 'YYYY')}
					]
				});

				lowest_year++;
			}
		})();

		function getLengthCollectionByMonth(query, collection, date_property, format) {
			var length_data = 0;

			for (var count = 0, length = collection.length; count < length; count++) {
				if (moment(moment.unix(collection[count][date_property])).format(format) == query) {
					length_data++;
				}				
			}

			return length_data
		}

		function hideSeries(selectedItem, type) {
			var col = selectedItem.column;

			if (selectedItem.row === null) {
				if (vm[type].view.columns[col] == col) {
					vm[type].view.columns[col] = {
						label: vm[type].data.cols[col].label,
						type: vm[type].data.cols[col].type,
						calc: function() {
							return null;
						}
					};

					vm[type].options.colors[col - 1] = '#CCCCCC';
				} else {
					vm[type].view.columns[col] = col;
					vm[type].options.colors[col - 1] = vm[type].options.defaultColors[col - 1];
				}
			}
		}
	}
})();	