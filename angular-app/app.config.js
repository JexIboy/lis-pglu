(function() {
	'use strict';
	angular
		.module('LisApp')
		.config(function () {
			moment.createFromInputFallback = function(config) {
				config._d = new Date(config._i);
			};
		});
})();