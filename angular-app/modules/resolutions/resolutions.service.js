(function() {
	'use strict';

	angular
		.module('ResolutionsModule')
		.service('ResolutionsService', ResolutionsService);

	ResolutionsService.$inject = ['HTTPService'];

	function ResolutionsService(HTTPService) {
		var raw_resolutions = [];
		var final_resolutions = [];

		this.setResolutions = setResolutions;
		this.getResolutions = getResolutions;
		this.fetchResolutions = fetchResolutions;
		this.sanitizeData = sanitizeData;

		function fetchResolutions(){
			var url = '/angular-app/data/resolutions.json';
			var isCache = true;

			return HTTPService.httpGET(url, isCache);
		}

		function setResolutions(data) {
			raw_resolutions = data;
		}

		function getResolutions() {
			return final_resolutions;
		}

		function sanitizeData() {
			var temp_resolutions = [];

			for (var count = 0, r_length = raw_resolutions.length; count < r_length; count++) {
				temp_resolutions.push({
					res_no : raw_resolutions[count].res_no,
					subj_matter : raw_resolutions[count].subj_matter,
					author : raw_resolutions[count].author,
					date_passed : moment(raw_resolutions[count].date_passed).unix(),
				});
			}

			final_resolutions = temp_resolutions;
		}
	}
})();