(function() {
	'use strict';
	angular
		.module('LisApp')
		.controller('AppController', AppController);

	AppController.$inject = ['$scope', '$timeout', '$mdSidenav', '$log', '$location', '$filter'];

	function AppController($scope, $timeout, $mdSidenav, $log, $location, $filter) {
		var vm = this;
		var originatorEv;

		vm.toggleMenu = toggleMenu;
		vm.openMenu = openMenu;
		vm.selected_menu = 'Home';		
		vm.menus = [
			{
				title: 'Home',
				state: 'home',
				link: '/',
				submenus: []
			},
			{
				title: 'Communications',
				state: 'communications',
				link: '/communications',
				submenus: []
			},
			{
				title: 'Referrals',
				state: 'referrals',
				link: '/referrals',
				submenus: []
			},
			{
				title: 'Committee Meetings',
				state: 'committee_meetings',
				link: '/committeeMeetings',
				submenus: [
					{
						title: 'Meetings for Ordinances',
						state: 'committee_meetings.ordinances',
						link: '/ordinances/meetings',
						submenus: []
					},
					{
						title: 'Meetings for Resolutions',
						state: 'committee_meetings.resolutions',
						link: '/resolutions/meetings',
						submenus: []
					}
				]
			},
			{
				title: 'Legislative Enactments',
				state: 'committee_meetings',
				link: '/committeeMeetings',
				submenus: [
					{
						title: 'Ordinances',
						state: 'ordinances',
						link: '/ordinances',
						submenus: []
					},
					{
						title: 'Resolutions',
						state: 'resolutions',
						link: '/resolutions',
						submenus: []
					}
				],
				link: ''
			},
			{
				title: 'Monitor Ordinances',
				state: 'ordinances.monitor',
				link: '/ordinances/monitor',
				submenus: [],
			},
			{
				title: 'Reports',
				state: 'reports',
				link: 'reports',
				submenus: [
					{
						title: 'Ordinance Reports',
						state: 'reports.ordinances',
						link: '/ordinances/reports',
						submenus: []
					},
					{
						title: 'Resolution Reports',
						state: 'reports.resolutions',
						link: '/resolutions/reports',
						submenus: []
					},
					{
						title: 'Other Reports',
						state: 'reports.other',
						link: '/others/reports',
						submenus: []
					}
				],
			},
			{
				title: 'Forum',
				state: 'forum',
				link: '/forum',
				submenu: [],
			},
		];

		function toggleMenu() {
			$mdSidenav('appMenu')
			.toggle();
		}

		function openMenu($mdOpenMenu, ev) {
			originatorEv = ev;
			$mdOpenMenu(ev);
		};
	}
})();