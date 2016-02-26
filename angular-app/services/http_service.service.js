(function() {
	'use strict';
	angular
		.module('LisApp')
		.service('HTTPService', HTTPService);

	HTTPService.$inject = ['$http', '$q'];

	function HTTPService($http, $q) {

		this.httpPOST = httpPOST;
		this.httpGET = httpGET;
		
		function httpPOST(url, data){
			var defer = $q.defer();

			$http({
				url: url,
				method: 'POST',
				data: data
			})
			.success(function(data) {
				defer.resolve(data);
			})
			.error(function(error) {
				defer.reject(error);
			});

			return defer.promise;
		}

		function httpGET(url, isCache){
			var defer = $q.defer();

			$http({
				url: url,
				method: 'GET',
				cache: (isCache ? true : false)
			})
			.success(function(data) {
				defer.resolve(data);
			})
			.error(function(error) {
				defer.reject(error);
			});

			return defer.promise;
		}
	}
})();