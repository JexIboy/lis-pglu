(function() {
	'use strict';
	angular
		.module('PhpMyAdmin')
		.controller('AppController', AppController);

	AppController.$inject = ['$scope', '$timeout', '$mdSidenav', '$log', '$location', '$filter'];

	function AppController($scope, $timeout, $mdSidenav, $log, $location, $filter) {
		var vm = this;
		var originatorEv;

		vm.goTo = goTo;
		vm.toggleMenu = toggleMenu;
		vm.openMenu = openMenu;
		vm.menus = [
			{
				title: 'Home',
				link: '/',
				submenus: []
			},
			{
				title: 'Communications',
				link: '/communications',
				submenus: []
			},
			{
				title: 'Referrals',
				link: '/referrals',
				submenus: []
			},
			{
				title: 'Committee Meetings',
				link: '',
				submenus: [
					{
						title: 'Meetings for Ordinances',
						link: '/ordinances/meetings',
						submenus: []
					},
					{
						title: 'Meetings for Resolutions',
						link: '/resolutions/meetings',
						submenus: []
					}
				]
			},
			{
				title: 'Legislative Enactments',
				submenus: [
					{
						title: 'Ordinances',
						link: '/ordinances',
						submenus: []
					},
					{
						title: 'Resolutions',
						link: '/resolutions',
						submenus: []
					}
				],
				link: ''
			},
			{
				title: 'Monitor Ordinances',
				link: '/ordinances/monitor',
				submenus: [],
			},
			{
				title: 'Reports',
				link: '',
				submenus: [
					{
						title: 'Ordinance Reports',
						link: '/ordinances/reports',
						submenus: []
					},
					{
						title: 'Resolution Reports',
						link: '/resolutions/reports',
						submenus: []
					},
					{
						title: 'Other Reports',
						link: '/others/reports',
						submenus: []
					}
				],
			},
			{
				title: 'Forum',
				link: '/forum',
				submenu: [],
			},
		];

		function toggleMenu() {
			$mdSidenav('appMenu')
			.toggle();
		}

		function goTo(menu) {
			vm.page_title = menu.title;
			vm.toggleMenu();
			$location.path(menu.link);
		}

		function openMenu($mdOpenMenu, ev) {
			originatorEv = ev;
			$mdOpenMenu(ev);
		};
	}
})();