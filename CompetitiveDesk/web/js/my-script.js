/**
 * Created by saan on 10/11/13.
 */

var STUDENT_METHOD = {

	handlerData : function(resJSON) {
		$.get('http://localhost:8080/HandlerBar/data/testresult.handlebars',
				function(templateSource) {
					template = Handlebars.compile(templateSource),

					studentHTML = template(resJSON);

					$('#my-container').html(studentHTML);
				});

		/*
		 * var templateSource = $("#student-template").html(),
		 * 
		 * template = Handlebars.compile(templateSource),
		 * 
		 * studentHTML = template(resJSON);
		 * 
		 * $('#my-container').html(studentHTML);
		 * console.log($("#student-template"))
		 */
	},
	loadStudentData : function() {
		// var htmlDAta ="";

		$.ajax({
			url : "http://localhost:8080/HandlerBar/data/studentData.json",

			method : 'get',
			success : this.handlerData

		})
	}
};
// url:"http://localhost:8080/BankerDesk/generateresult",
$(document).ready(function() {

	STUDENT_METHOD.loadStudentData();
});