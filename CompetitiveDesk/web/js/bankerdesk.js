/**
 * 
 */

var newwin ;
function ajaxCallEx(url, param, callback) {
	jQuery.ajax({
		url : baseUrl + "/" + url,
		data : param,
		type : "POST",
		success : callback,
		dataType : "json",
		error : function(xhr) {
			// alert(xhr.status);
		}
	});
}

$.fn.allowOnlyDigits = function() {
    var keyCtrl = false,
            ctrl = 17,
            vKey = 86,
            Vkey = 118;

    $(document).keydown(function(e) {
        if (e.keyCode == ctrl)
            keyCtrl = true;
    }).keyup(function(e) {
        if (e.keyCode == ctrl)
            keyCtrl = false;
    });

    var $this = $(this);

    $this.on('paste', function(e) {
        setTimeout(function() {
            $this.val($this.val().replace(/[^0-9]/g, ''));
        }, 5);
    });

    $this.keypress(function(e) {
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && !keyCtrl && (e.which != vKey || e.which != Vkey)) {
            return false;
        }
    });
};

function getParamObj($container) {
	var param = new Object();
	$(
			"input[type=text],input[type=tel],input[type=hidden],input[type=password],select,input[type=checkbox]:checked,input[type=radio]:checked,textarea",
			$container)
			.each(
					function() {
						var $this = $(this);
						if ($this.attr('name') && $this.attr('name').length > 0) {
							if ($this.attr('datatype')
									&& $this.attr('datatype') == "int") {
								param[$this.attr('name')] = $this.val().length > 0 ? parseInt($
										.trim($this.val()))
										: 0;
							} else {
								param[$this.attr('name')] = $.trim($this.val());
							}
						}
					});
	return param;
}

function addTestPackage(){
	var $addTestPackage = $("#addTestPackage");
	
	 $("input[name='popularity']", $addTestPackage).allowOnlyDigits();
	 $("input[name='status']", $addTestPackage).allowOnlyDigits();

	 ajaxCallEx(
				"question/getalltestpackage",
				null,
				function(res) {
					if (res.STATUS == 1) {
						var templateSource = $("#myTestPackageFrm-template").html(), template = Handlebars
								.compile(templateSource), resultHTML = template(res);

						$('#mytestpackage-container').html(resultHTML);
					}
					if (res.STATUS == 2) {
						$('#mytest-container').html(
								'<b>' + res.MESSAGE + '</b>');
					}
				});
	 
	 var validateTestPackageDetails = function() {
		 $addTestPackage.validate({
			highlight : function(element) {
				$(element).addClass("inputerror");
			},
			unhighlight : function(element) {
				$(element).addClass("inputerror");
			},
           rules: {
           	name: {
                   required: true
               },
               popularity: {
                   required: true
               },
               imagename: {
                   required: true
               },
               status: {
                   required: true
               },
               description: {
                   required: true
               }
           },
           messages: {
          name: {
               required: ""
           },
           popularity: {
               required: ""
           },
           imagename: {
               required: ""
           },
           status: {
               required: ""
           },
           description: {
               required: ""
           }
           }
       });
		return $($addTestPackage).valid();
	 };
	
		  

	$("[name='testpackageadd']", $addTestPackage).on("click", function() {
		if (!validateTestPackageDetails()) {
           return;
       }
		var param = new Object();
		var data = getParamObj($addTestPackage);
		if (data["id"] != undefined) {
			data["id"] = parseInt(data["id"]);
		}
		
		if (data["popularity"] != undefined) {
			data["popularity"] = parseInt(data["popularity"]);
		}
		
		if (data["status"] != undefined) {
			data["status"] = parseInt(data["status"]);
		}
		
		
		param["data"] = JSON.stringify(data);
		ajaxCallEx("usertest/addtestpackage", param, function(res) {
			if (res.STATUS !== 1) {
				alert("Issue while add sample test.");
				return;
			}
			// alert("Question Added Successfully!");
			window.location.href = baseUrl + "/online-test/addtestpackage";
		});
	});
	
}


function addSampleTest() {
	var $queOptAdd = $("#addSampleTest");
	
	 $("input[name='testId']", $queOptAdd).allowOnlyDigits();
	 $("input[name='testType']", $queOptAdd).allowOnlyDigits();
	 $("input[name='attempt']", $queOptAdd).allowOnlyDigits();
	 $("input[name='language']", $queOptAdd).allowOnlyDigits();
	 $("input[name='price']", $queOptAdd).allowOnlyDigits();
	   
	 ajaxCallEx(
				"question/getallusertestsample",
				null,
				function(res) {
					if (res.STATUS == 1) {
						var templateSource = $("#myUserTestSampleCtr-template").html(), template = Handlebars
								.compile(templateSource), resultHTML = template(res);

						$('#myUserTestSampleCtr-container').html(resultHTML);
					}
					
				});
	 
	 ajaxCallEx(
				"question/getalltestpackage",
				null,
				function(res) {
					if (res.STATUS == 1) {
						var templateSource = $("#myTestPackageCtr-template").html(), template = Handlebars
								.compile(templateSource), resultHTML = template(res);

						$('#myTestPackageCtr-container').html(resultHTML);
					}
					
				});
	
	ajaxCallEx(
			"question/getallquestionsbydeoperator",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#myTestQuestionFrm-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mytestquestion-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mytest-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
	
	 var validateSampleTestDetails = function() {
		 $queOptAdd.validate({
			highlight : function(element) {
				$(element).addClass("inputerror");
			},
			unhighlight : function(element) {
				$(element).addClass("inputerror");
			},
            rules: {
            	name: {
                    required: true
                },
                duration: {
                    required: true
                },
                testType: {
                    required: true
                },
                attempt: {
                    required: true
                },
                price: {
                    required: true
                },
                language: {
                    required: true
                },
                subjectSet: {
                    required: true
                },
                chkQueqIdBox:{
                	 required: true
                }
            },
            messages: {
            	name: {
            		required: ""
                },
                duration: {
                	required: ""
                },
                testType: {
                	required: ""
                },
                attempt: {
                	required: ""
                },
                price: {
                	required: ""
                },
                language: {
                	required: ""
                },
                subjectSet: {
                	required: ""
                },
                chkQueqIdBox:{
                	required: ""
                }
            }
        });
		return $($queOptAdd).valid();
	 };
	
		  

	$("[name='sampletestadd']", $queOptAdd).on("click", function() {
		if (!validateSampleTestDetails()) {
            return;
        }
		var param = new Object();
		var data = getParamObj($queOptAdd);
		if (data["id"] != undefined) {
			data["id"] = parseInt(data["id"]);
		}
		if (data["language"] != undefined) {
			data["language"] = parseInt(data["language"]);
		}
		if (data["attempt"] != undefined) {
			data["attempt"] = parseInt(data["attempt"]);
		}
		if (data["testType"] != undefined) {
			data["testType"] = parseInt(data["testType"]);
		}
		if (data["testId"] != undefined) {
			data["testId"] = parseInt(data["testId"]);
		}
		if (data["price"] != undefined) {
			data["price"] = parseInt(data["price"]);
		}
		if (data["testpackage"] != undefined) {
			data["testpackage"] = parseInt(data["testpackage"]);
		}
		
		var subjectIds = new Array();
        $("input[name='subjectSet']:checked", $queOptAdd).each(function() {
        	/*alert(this.value);*/
        	subjectIds.push(parseInt(this.value));
        });
        data["subjectSet"] = subjectIds;
		
        
		
		var questionIds = new Array();
        $("input[name='chkQueqIdBox']:checked", $queOptAdd).each(function() {
        	
            questionIds.push(parseInt(this.value));
        });
        data["questionSet"] = questionIds;

		param["data"] = JSON.stringify(data);
		ajaxCallEx("question/savesampletest", param, function(res) {
			if (res.STATUS !== 1) {
				alert("Issue while add sample test.");
				return;
			}
			// alert("Question Added Successfully!");
			window.location.href = baseUrl + "/online-test/addsampletest";
		});
	});

	
	
	$("[name='sampletestsearch']", $queOptAdd).on("click", function() {
		var param = new Object();
		var data = new Object();
		var testId  = $("[name='testId']").val();
		data["testId"] = parseInt(testId);
		param["data"] = JSON.stringify(data);
		ajaxCallEx("question/getsampletest", param, function(res) {
			if (res.STATUS !== 1) {
				alert("Issue while get sample test.");
				return;
			}else{
				$("[name='id']").val(res.DATA.testId);
				$("[name='testType']").val(res.DATA.type);
				$("[name='price']").val(res.DATA.testPrice);
				$("[name='name']").val(res.DATA.name);
				$("[name='attempt']").val(res.DATA.attempt);
				$("[name='imagename']").val(res.DATA.imagename);
				$("[name='discription']").val(res.DATA.discription);
				$("[name='duration']").val(res.DATA.duration);
				$("select[name='testpackage']").val(res.DATA.testPackageId);
				
				
				var subjectMapkeys = $.map(res.DATA.subjectMap, function( value, key ) {
					  return value.id;
					});
				
				$($queOptAdd).find(':checkbox[name="subjectSet"]').each(function () {
                  $(this).prop("checked", ($.inArray(this.value, subjectMapkeys) != -1));
                });
				
				
				var questionMapkeys = $.map(res.DATA.questionMap, function( value, key ) {
					  return key;
					});
				
				$($queOptAdd).find(':checkbox[name="chkQueqIdBox"]').each(function () {
                    $(this).prop("checked", ($.inArray(this.value, questionMapkeys) != -1));
                });
			}
			
			// alert("Question Added Successfully!");
			// window.location.href = baseUrl + "/online-test/addsampletest";
		});
	});

	
	
}

function addHindiQuestionAndOption(){
	
	//getallquestions
	ajaxCallEx(
			"question/getallquestions",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#myTestQuestionFrm-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mytestquestion-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mytest-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
	var $hindiQueOptAddFrm = $("#addhindiquestionoption");
	var $ckhans;
	$("[name='hindiquestionoption']", $hindiQueOptAddFrm).on("click", function() {
		var param = new Object();
		var data = getParamObj($hindiQueOptAddFrm);
		if (data["category"] != undefined) {
			data["category"] = parseInt(data["category"]);
		}
		if (data["questionId"] != undefined) {
			data["questionId"] = parseInt(data["questionId"]);
		}
		if (data["answerId"] != undefined) {
			data["answerId"] = parseInt(data["answerId"]);
		}
		if (data["answer"] != undefined) {
			data["answer"] = $ckhans;
		}
		param["data"] = JSON.stringify(data);
		ajaxCallEx("question/savehindiquestion", param, function(res) {
			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			// alert("Question Added Successfully!");
			window.location.href = baseUrl + "/online-test/addhindiquestion";
		});
	});

	$("input[type=checkbox][name=answer]").on("click", function() {
		$ckhans = $("input:checked").attr('id');
	});

}

function onMainQuesionChange(qid){
	$("input[name=questionId]").val(qid);
	var param = new Object();
	var data = new Object();
	data["questionId"] = parseInt(qid);
	param["data"] = JSON.stringify(data);
	ajaxCallEx(
			"question/getQuestionOption",
			param,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#myTestQuestionEnglishInfo-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mytestquestionenglishInfo-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mytestquestionenglishInfo-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
}

var $ckhans;
var $ckhnone;
function onQuestionEditBtnClick(id){
	$("#addquestionoption tr[name=OP5]").hide();
	$("#addquestionoption #INopt5").val('');
	$("#addquestionoption #IN_none").val('0');
	$("#addquestionoption #q_cat").val('0');
	var param = new Object();
	var data = new Object();
	
		data["questionId"] = id;
	
	param["data"] = JSON.stringify(data);
	ajaxCallEx("question/getQuestionOption", param, function(res) {
		if (res.STATUS !== 1) {
			alert("Issue while edit question.");
			return;
		}
		$('#addquestionoption input[type=text]').each(function(){
			$(this).val('');
		});
		$('#addquestionoption input[type=checkbox]').each(function(){
			//$(this).removeAttr('checked');
			if(this.checked) {
				this.checked =false;
			}
		});
		$("#addquestionoption #solution").val(res.DATA.question.solution);
		$("#addquestionoption #testRef").val(res.DATA.question.testRef);
		$("#addquestionoption #category").val(res.DATA.question.category.id);
		$("#addquestionoption #heading").val(res.DATA.question.heading.id);
		$("#addquestionoption #status").val(res.DATA.question.status.id);
		$("#addquestionoption #question").val(res.DATA.question.question);
		$("#addquestionoption #q_id").val(res.DATA.question.id);
		if(res.DATA.question.docSubCategory != undefined){
			$("#addquestionoption #q_cat").val(res.DATA.question.docSubCategory.id);
		}
	
		
		//$("#addquestionoption #INopt1").val(res.DATA.queOptObj[0].options.value);
			
		//$("#addquestionoption #INopt2").val(res.DATA.queOptObj[1].options.value);
		
		//$("#addquestionoption #INopt3").val(res.DATA.queOptObj[2].options.value);
		
		//$("#addquestionoption #INopt4").val(res.DATA.queOptObj[3].options.value);
		
		
		/*if(res.DATA.queOptObj[4].options.id == 5){
			$("#addquestionoption tr[name=OP5]").hide();
			$("#addquestionoption #IN_none").val('5');
			//$("#addquestionoption #hdnIN_none").val(res.DATA.queOptObj[4].options.id);
			//$("#addquestionoption #INopt5").val('');
		}else{
			$("#addquestionoption tr[name=OP5]").show();
			//$("#addquestionoption #IN_none").attr("checked",false);
			$("#addquestionoption #INopt5").val(res.DATA.queOptObj[4].options.value);
			//$("#addquestionoption #hdnINopt5").val(res.DATA.queOptObj[4].options.id);
		}*/
		
		var none =0;
		for(var i=0;i<5;i++){
			 var j = i + 1;
			 
			if(res.DATA.queOptObj[i].options.id == 5){
				$("#addquestionoption tr[name=OP5]").hide();
				$("#addquestionoption #IN_none").val('1');
				none = 1;
				
			}else{
				if(i == 4 && none == 0){
					$("#addquestionoption tr[name=OP5]").show();
				}
				if(i == 4 && none == 1){
					j = j -1;
				}
				
				
				$("#addquestionoption #INopt"+j).val(res.DATA.queOptObj[i].options.value);
				
			}
		}
		
		
		
		if(res.DATA.answerObj.questionOptionMapping.options.id == 5){
			var nonechk = $("#addquestionoption #none");
			nonechk.attr("checked","checked");
			
			$ckhnone = nonechk.attr('name');
			
		}else{
			$('input[type=text]').each(function(){
				if ($(this).val() == res.DATA.answerObj.questionOptionMapping.options.value){
					var chkbox = ($(this).attr('id')).replace('IN','');
					var ansChk = $('input[type=checkbox][id='+chkbox+']');
					ansChk.attr("checked","checked");
					$ckhans = ansChk.attr('id');
				}
			});
	
		}
		
		
		
		//commonInfo
		
		
		/*
		if(res.DATA.active){
			$("#studentRegistration #active").attr("checked","checked");
		}
		if(res.DATA.block){
			$("#studentRegistration #block").attr("checked","checked");
		}*/
	});
	
	  $("html, body").animate({ scrollTop: 0 }, "slow");
	  return false;
}

function onQuestionOkBtnClick(id){

	var param = new Object();
	var data = new Object();
	data["qid"] = parseInt(id);
	param["data"] = JSON.stringify(data);

	ajaxCallEx("question/updatestatus", param, function(res) {
		if (res.STATUS !== 1) {
			alert("Question status not updated");
			return;
		}
		// alert("Question Added Successfully!");
		window.location.href = baseUrl + "/online-test/addquestion";
	});
}

function onQuestionDeleteBtnClick(id){
	var param = new Object();
	var data = new Object();
	data["qid"] = parseInt(id);
	param["data"] = JSON.stringify(data);

	ajaxCallEx("question/deleteQuestionData", param, function(res) {
		if (res.STATUS !== 1) {
			alert("Question not deleted");
			return;
		}
		// alert("Question Added Successfully!");
		window.location.href = baseUrl + "/online-test/addquestion";
	});
}

function addQuestionAndOption() {
	
	
	ajaxCallEx(
			"question/getallquestionsbydeoperator",
			null,
			function(res) {
				if (res.STATUS == 1) {
					//var template = $("#question-option-template").html();
					//var templateScript = Handlebars.compile(template);

					//var resultHTML = templateScript(res);
					
					var templateSource = $("#question-option-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#question-option-container').append(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#question-option-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
	
	ajaxCallEx(
			"getalldeskdocsubcategory",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#mydocsubcategory-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mydocsubcategory-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mydocsubcategory-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
	
	ajaxCallEx(
			"question/getallheading",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#myheading-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#myheading-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#myheading-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});

	var $addquestionoption = $("form#addquestionoption");

	 
	 $("input[name='category']", $addquestionoption).allowOnlyDigits();
	 $("input[name='status']", $addquestionoption).allowOnlyDigits();
	
	
	var $add = $("#addquestion");
	
	
	 var validateAddQuestionDetails = function() {
			
		 $addquestionoption.validate({
			highlight : function(element) {
				$(element).addClass("inputerror");
			},
			unhighlight : function(element) {
				$(element).removeClass("inputerror");
			},
            rules: {
            	q_cat :{
            		 required: true
            	},
            	testRef :{
            		 required: true
            	},
            	heading:{
            		required: true
            	},
                question: {
                    required: true
                },
                category: {
                    required: true
                },
                status: {
                    required: true
                },
                opt1: {
                    required: true
                },
                opt2: {
                    required: true
                },
                opt3: {
                    required: true
                },
                opt4: {
                    required: true
                },
                opt5: {
                	required: false
                },
                none: {
                	required: true
                }
            },
            messages: {
            	q_cat :{
           		 required: ""
           	   },
            	testRef :{
           		 required: ""
           	    },
	           	 heading :{
	           		 required: ""
	           	 },
                question: {
                	 required: ""
                },
                category: {
                	 required: ""
                },
                status: {
                	 required: ""
                },
                opt1: {
                	 required: ""
                },
                opt2: {
                	 required: ""
                },
                opt3: {
                	 required: ""
                },
                opt4: {
                	 required: ""
                },
                opt5: {
               	    required: ""
                }
               
            }
        });
		return $($addquestionoption).valid();
	 };
	
	
	// var $cel = $("#que");
	$("[name='questionadd']", $add).on("click", function() {
		
		
		var param = new Object();
		var data = getParamObj($add);
		if (data["category"] != undefined) {
			data["category"] = parseInt(data["category"]);
		}
		if (data["status"] != undefined) {
			data["status"] = parseInt(data["status"]);
		}
		data["action"] = "questionadd";
		param["data"] = JSON.stringify(data);
		ajaxCallEx("questionmanage", param, function(res) {
			if (res.STATUS !== 1) {
				alert("Question already exist");
				return;
			}
			// alert("Question Added Successfully!");
			window.location.href = baseUrl + "/online-test/addquestion";
		});
	});

	var $optForm = $("#addoption");
	$("[name='optionadd']", $optForm).on("click", function() {
		var param = new Object();
		var data = getParamObj($optForm);
		data["action"] = "optionadd";
		param["data"] = JSON.stringify(data);
		ajaxCallEx("questionmanage", param, function(res) {
			if (res.STATUS !== 1) {
				alert("Option already exist");
				return;
			}
			// alert("Question Added Successfully!");
			window.location.href = baseUrl + "/online-test/addquestion";
		});
	});

	var $queOptAdd = $("#addquestionoption");
	$("[name='questionoption']", $queOptAdd).on("click", function() {
		
		if(!validateAddQuestionDetails()){
			return;
		}
		var param = new Object();
		var data = getParamObj($queOptAdd);
		if (data["category"] != undefined) {
			data["category"] = parseInt(data["category"]);
		}
		if (data["heading"] != undefined) {
			data["heading"] = parseInt(data["heading"]);
		}
		if (data["status"] != undefined) {
			data["status"] = parseInt(data["status"]);
		}
		if (data["answer"] != undefined) {
			data["answer"] = $ckhans;
		}
		if (data["q_cat"] != undefined) {
			data["q_cat"] = parseInt(data["q_cat"]);
		}
		
		if (data["q_id"] != undefined) {
			data["q_id"] = parseInt(data["q_id"]);
		}
		
		data["action"] = "questionoptionadd";
		param["data"] = JSON.stringify(data);
		ajaxCallEx("question/savequestionanswer", param, function(res) {
			if (res.STATUS !== 1) {
				alert(res.MESSAGE);
				return;
			}
			// alert("Question Added Successfully!");
			window.location.href = baseUrl + "/online-test/addquestion";
		});
	});

	$("input[type=checkbox][name=answer]").on("click", function() {
		
			$ckhans = $(this).attr('id');
			
		//$ckhans = this.attr('id');
	});

	$("select[name=none]").change(function() {
		if(this.value == 0){
			alert("Select another value");
		}
		if(this.value == 1){
			$("tr[name=OP5]").hide();
		}
		if(this.value == 5){
			$("tr[name=OP5]").show();
		}
		
	});
	//$("input[type=checkbox][name=none]").on("click", function() {
		//if($("input[type=checkbox][name=none]").is(':checked')){
			//$ckhnone = $("input[type=checkbox][name=none]").attr('name');
		//}
		//--$ckhnone = $("input:checked").attr('name');
		//--$ckhnone = this.attr('name');
	//});
}

function getQuestion(qid) {
	var param = new Object();
	var data = '{"qid":' + qid + '}';
	param["data"] = JSON.stringify(data);
	ajaxCallEx("testmanage", param, function(res) {
		if (res.STATUS !== 1) {
			alert("Question already exist");
			return;
		}
		
		window.location.href = baseUrl + "/online-test/addquestion";
	});
}

function getALLQuestion() {
	ajaxCallEx("testmanage", null, function(res) {
		if (res.STATUS !== 1) {
			alert("Question already exist");
			return;
		}
		alert(res.DATA + "." + 1);
		window.location.href = baseUrl + "/test";
	});
}

function getQuestionOnKey(keyGet) {

	var $add = $("#usertestform");
	var param = new Object();
	var data = getParamObj($add);
	data["qid"] = keyGet;
	if (data["qid"] != undefined) {
		data["qid"] = parseInt(data["qid"]);
	}
	if (data["quekey"] != undefined) {
		data["quekey"] = parseInt(data["quekey"]);
	}
	if (data["optionid"] != undefined) {
		data["optionid"] = parseInt(data["optionid"]);
	}

	param["data"] = JSON.stringify(data);

	// var param = '{"qid":' + keyGet + '}';
	ajaxCallEx("testquestion", param, function(res) {
		if (res.STATUS !== 1) {
			alert("OOps Something went wrong !.");
			return;
		}
		//testViewClear();
		//testViewResponseGen(res);
		liveTestViewResponseGen(res);
	});

}

function setCategory(keyGet, test) {
	var param = new Object();
	var data = new Object();
	data["testCategoryId"] = keyGet;
	data["testName"] = test;
	param["data"] = JSON.stringify(data);

	ajaxCallEx("usertest/setcategory", param, function(res) {
		if (res.STATUS !== 1) {
			alert("OOps Something went wrong !.");
			return;
		}
		if (res.STATUS == 6) {
			alert("No Data Found !.");
			return;
		}
		window.location = baseUrl + "/online-test/usertest/" + res.DATA;
		
	});

}

/*
 * function getQuestionOnKeyForward(keyGet) {
 * 
 * var param = '{"qid":' + keyGet + '}'; ajaxCallEx("testmanage", { "data" :
 * param }, function(res) { if (res.STATUS !== 1) { alert("OOps Something went
 * wrong !."); return; } testViewClear(); testViewResponseGen(res); });
 *  }
 */

function initiatUserTestMain() {
	var $manuFrm = $("#testmenumain");
	$manuFrm.hide();
	 $(".loader").show();
	ajaxCallEx(
			"usertest/gettestpackage",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#myTestFrm-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

				/*	$('#mytestmain-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mytestmain-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}*/
				
				$('#testmenumain').html(resultHTML);
				 $(".loader").hide();
				 $manuFrm.show();
			}
			if (res.STATUS == 2) {
				$('#testmenumain').html(
						'<b>' + res.MESSAGE + '</b>');
			}
			
			});
	
}



function addToCart(testId,redirectUrl) {
	var param = new Object();
	param["data"] = '{"testId":' + testId + '}';
	
	ajaxCallEx("testorder/addtocart", param, function(res) {
		if (res.STATUS == 1) {
			
			//window.location = baseUrl + "/" + redirectUrl;
			//$(".container #cartrsuccessnotify").css({display: 'block'});
			$("#main-nav .container #cartBadgeSize").html(res.DATA.cartSize);
			$("#main-nav .container #cartrsuccessnotify").css({display: 'block'}).fadeIn('slow').delay(1000).fadeOut('slow');
		}
		if (res.STATUS == 2) {
			alert("Issue added to cart");
		}
		
		if (res.STATUS == 5) {
			var pageUrl = res.DATA;
			window.location = baseUrl + pageUrl;
		}

	});
}

function removeFromCart(testId) {
	var param = new Object();
	param["data"] = '{"testId":' + testId + '}';
	
	ajaxCallEx("testorder/removefromcart", param, function(res) {
		if (res.STATUS == 1) {
			window.location = baseUrl + "/testorder/cart";
			
		}
		if (res.STATUS == 2) {
			alert("Issue added to cart");
		}
		
		if (res.STATUS == 5) {
			var pageUrl = res.DATA;
			window.location = baseUrl + pageUrl;
		}

	});
}

function initiateTestDetailLoader() {
	var testid= $("#testidtxt").val;
	
	var param = new Object();
	param["data"] = '{"testTypeId":' + testid + '}';
	
	ajaxCallEx(
			"usertest/gettestdetail",
			param,
			function(res) {
				var testName =res.DATA.TEST_NAME;
				
				if (testName != undefined) {
					$('title').html('Online Aptitude Test - Online test for '+ testName +' competitive exams in english and hindi | competitivedesk.com');
				}
				
				if (res.STATUS == 1) {
					var templateSource = $("#resultFrm-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res.DATA.TESTINFO);

					$('#result-container').html(resultHTML);
				}
				
			});

}

function initiatUserTest() {

	var $manuFrm = $("#testmenumain");
	
	ajaxCallEx(
			"usertest/getusertest",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#myTestFrm-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mytest-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mytest-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
	
	var onmyTestBtnClick = function() {

		ajaxCallEx(
				"usertest/getmytest",
				null,
				function(res) {
					if (res.STATUS == 1) {
						var templateSource = $("#myTestFrm-template").html(), template = Handlebars
								.compile(templateSource), resultHTML = template(res);

						$('#mytest-container').html(resultHTML);
					}
					if (res.STATUS == 2) {
						$('#mytest-container').html(
								'<b>' + res.MESSAGE + '</b>');
					}
				});
	};

	var ongivenTestBtnClick = function() {

		ajaxCallEx(
				"usertest/getusertest",
				null,
				function(res) {
					if (res.STATUS == 1) {
						var templateSource = $("#myGivenFrm-template").html(), template = Handlebars
								.compile(templateSource), resultHTML = template(res);

						$('#mytest-container').html(resultHTML);
					}
					if (res.STATUS == 2) {
						$('#mytest-container').html(
								'<b>' + res.MESSAGE + '</b>');
					}
				});
	};

	var selector = '.nav li';
	var onNavLiClick = function() {
		$(selector).removeClass('selActive');
		$(this).addClass('selActive');
	};

	$(selector, $manuFrm).on("click", onNavLiClick);
	
	var $sortlinkform = $("#sortlinkform");
	var selectoranchor = '#sortlink a';
	var on$sortlinkformLiClick = function() {
		$(selector).removeClass('anchorActive');
		$(this).addClass('anchorActive');
	};

	$(selectoranchor, $sortlinkform).on("click", on$sortlinkformLiClick);

	$("#myTestId", $manuFrm).on("click", onmyTestBtnClick);

	$("#givenTest", $manuFrm).on("click", ongivenTestBtnClick);

}

function startUserTest(testId,testType) {
	var language = $("#language:checked").val();
	if (testType == '2' && language == undefined) {
		alert("Please select your default language "); 
		return false;
	}
	var param = new Object();
	var data = new Object();
	data["testId"] = testId;
	data["testTypeId"] = testType;
	data["language"] = language;
	param["data"] = JSON.stringify(data);
	ajaxCallEx("usertest/generatenewtest", param, function(res) {
		// alert(res.DATA);
		if (res.STATUS == 3) {
			alert(res.MESSAGE);
			return;
		}
		if (res.STATUS == 2) {
			alert("OOps Something went wrong !.");
			return;
		}
		if (res.STATUS == 5) {
			var pageUrl = res.DATA.url;
			var pagetype = res.DATA.fromurl;
			var testId = res.DATA.testId;
			window.location = baseUrl + pageUrl +"/"+pagetype+"/"+testId;
		}
		if (res.STATUS == 1) {
			var pageUrl = res.DATA;
			//window.location.href = baseUrl + pageUrl;
			openWindow(baseUrl + pageUrl , baseUrl);
		}
	});
}

function openWindow(url,baseUrl) {
	
	var width = (screen.width - 100);
	var height = (screen.height - 50);
	var left = 50;
	var top = 50;
	var params = 'width='+ width +', height='+ height+', top='+ top +', left='+ left+ ', resizable=1';
	newwin = window.open(url,baseUrl, params);
	if (window.focus) {newwin.focus();}
	return false;
	}

function removeHeader() {
	$("#mainhead").slideUp("normal", function() {
		$(this).remove();
	});
}


function onlanguageCng(end){
     if(end == "hn"){
     	$("#hindiTestview").show();
     	$("#englishTestview").hide();
     }
     
     if(end == "en"){
     	$("#hindiTestview").hide();
     	$("#englishTestview").show();
     }
}


function initiateTestLoaderaccess() {
	
	//var $submitTestForm = $("form#submitUsertestform");
	 $("#testaccessview").hide();
	 $("#loader").show();
	ajaxCallEx("testquestion", null, function(res) {
		// alert(res);
		if (res.STATUS == 2) {
			alert(res.MESSAGE);
			return;
		}
		if (res.STATUS == 5) {
			var pageUrl = res.DATA;
			window.location.href = baseUrl + pageUrl;
			// window.location = baseUrl + "/login.jsp";
		}
		if (res.STATUS == 1) {
			testViewClear();
			//testViewResponseGen(res);
			liveTestViewResponseGen(res);
			 $("#loader").hide();
			 $("#testaccessview").show();
		}
	});
	
	 
	
}


function submitUserTest(url) {
	window.close(); 
	//newwin.close();
	getResultTab(url);
}

function getResultTab(url) {
    var form = document.createElement("form");
    form.method = "GET";
    form.action = "http://localhost:8081/CompetitiveDesk/online-aptitude-test-in-english-and-hindi/" + url;
    form.target = "_blank";
    document.body.appendChild(form);
    form.submit();
}

function initiateResult() {

	ajaxCallEx("generateresult", null, function(res) {
		// alert(res);
		if (res.STATUS == 2) {
			alert("OOps Something went wrong !.");
			return;
		}
		if (res.STATUS == 5) {
			var pageUrl = res.DATA;
			window.location.href = baseUrl + pageUrl;
			// window.location = baseUrl + "/login.jsp";
		}
		if (res.STATUS == 1) {
			
			var templateSource = $("#result").html(),

			template = Handlebars.compile(templateSource),

			studentHTML = template(res);
			
			$('#result').html(studentHTML);
			console.log($("#student-template"));

		}
	});

}

function liveTestViewResponseGen(res) {
	if (res.STATUS == 1) {
		var templateSource = $("#liveTestViewFrm-template").html(), template = Handlebars
				.compile(templateSource), resultHTML = template(res);

		$('#liveTestView-container').html(resultHTML);
	}
	if (res.STATUS == 2) {
		$('#liveTestView-container').html('<b>' + res.MESSAGE + '</b>');
	}

}

function testViewResponseGen(res) {
	$("#nextkey").val(res.DATA.QUESTION_NEXT_KEY);
	$("#quekey").val(res.DATA.QUESTION_KEY);
	$("input[name=opt" + res.DATA.QUESTION_KEY + "]").attr("disabled",
			"disabled");
	var i=0;
	$
			.each(
					res.DATA.TOTAL_QUESTION_OPTION_MAP,
					function(key, value) {
						i= i+1;
						// alert(key+" : "+value);
						if (value == 1) {
							$("#selection")
									.append(
											'<input type="button" class="button_example_white" style="margin-right: 4px" name="opt'
													+ key
													+ '"'
													+ 'value="'
													+ i
													+ '" onclick="getQuestionOnKey(this.value)"></input>');
						} else if (value == 2) {
							$("#selection")
									.append(
											'<input type="button" class="button_example_red" style="margin-right: 4px;" name="opt'
													+ key
													+ '"'
													+ 'value="'
													+ i
													+ '" onclick="getQuestionOnKey(this.value)"></input>');
						} else if (value == 3) {
							$("#selection")
									.append(
											'<input type="button" class="button_example_green" style="margin-right: 4px;" name="opt'
													+ key
													+ '"'
													+ 'value="'
													+ i
													+ '" onclick="getQuestionOnKey(this.value)"></input>');
						} else if (value == 4) {
							$("#selection")
									.append(
											'<input type="button" class="button_example_blue" style="margin-right: 4px;" name="opt'
													+ key
													+ '"'
													+ 'value="'
													+ i
													+ '" onclick="getQuestionOnKey(this.value)"></input>');
						} else if (value == 5) {
							$("#selection")
									.append(
											'<input type="button" class="button_example_orange" style="margin-right: 4px;" name="opt'
													+ key
													+ '"'
													+ 'value="'
													+ i
													+ '" onclick="getQuestionOnKey(this.value)"></input>');
						}
						var qq = 'opt' + $("#quekey").val();

						$("input[type=button][name=" + qq + "]").attr(
								'disabled', 'disabled').attr(
										'class', 'button_example_grey');
					
					});

	/*
	 * var resData = res.DATA.TOTAL_QUESTION_OPTION_MAP; for( var x in resData ) {
	 * $("#selection").append('<input type="button" style="width:
	 * 50px;margin-right: 4px" name="opt'+ resData[x] +'"' +
	 * 'value="'+resData[x]+'" onclick="getQuestionOnKey(this.value)"></input>'); }
	 */

	// onclick="saveNext('+res.DATA.QUESTION_KEY+')" class="btn btn-primary" class="button_example_action"
	$("#actionButton")
			.html(
					'<input type="button" class="btn btn-primary btn-md btnm" name="markreview" id="markreview" '
							+ 'value="Mark Review" onclick="markReview('
							+ res.DATA.QUESTION_KEY
							+ ')" style="margin-right: 4px;margin-top: 10px;align:center;"></input>'
							+ '<input type="button" class="btn btn-primary btn-md btns" name="savenext" id="savenext"'
							+ 'value="Save & Next" onclick="saveNext('
							+ res.DATA.QUESTION_KEY
							+ ')" style="margin-right: 4px;margin-top: 10px;align:center;"></input>'
							+ '<input type="button" class="btn btn-primary btn-md btnc" name="clear" id="clear"'
							+ 'value="Clear" onclick="clearResponse()" style="margin-right: 4px;margin-top: 10px;align:center;"></input>'

			);

	if (res.DATA.HINDI_QUESTION_OPTION_MAP != undefined) {
		var queContant = "";
		$.each(
				// res.DATA.QUESTION_OPTION_MAP,
				res.DATA.HINDI_QUESTION_OPTION_MAP,
				function(key, value) {
					$("#tblLanguageBar").html('<table style="float: right;margin-right: 10px;margin-top: 10px;">' +
					'<tr><td><select id="languageSelect" onchange="onlanguageCng(this.value)"><option value="en">  English  </option><option value="hn">  Hindi  </option></select><td></tr></table>');
					queContant = queContant + '<br><div id="hindiTestview"><table style="margin-bottom:10px"><tr><td>' + key
					+ '</td><td></td><table>';
					$
					.each(
							value,
							function(innerKey, innerValue) {
								var ansID = res.DATA.ANSWER_ID;
								if (innerValue.id == ansID) {
									queContant = queContant
									+ '<tr style="margin-top:10px"><td></td><td><input type="radio" name="optionidhindi" checked="checked" value="'
									+ innerValue.id
									+ '" /></td><td style="padding-left:10px">'
									+ innerValue.value
									+ '</td></tr>';
								} else {
									queContant = queContant
									+ '<tr style="margin-top:10px"><td></td><td><input type="radio" name="optionidhindi" value="'
									+ innerValue.id
									+ '" /></td><td style="padding-left:10px">'
									+ innerValue.value
									+ '</td></tr>';
								}
							});
					queContant = queContant + '</table></tr></table></div>';
					
					$("#testView").append(queContant);
				});
	}
	
	if (res.DATA.QUESTION_OPTION_MAP != undefined) {
	var queContantEng = "";
	$.each(res.DATA.QUESTION_OPTION_MAP,function(key, value) {
		
		queContantEng = queContantEng + '<div id="englishTestview"><table style="margin-bottom:10px"><tr><td>' + key
						+ '</td><td></td><table>';
				$.each(value,function(innerKey, innerValue) {
					
									var ansID = res.DATA.ANSWER_ID;

									if (innerValue.id == ansID) {
										queContantEng = queContantEng
												+ '<tr style="margin-top:10px"><td></td><td><input type="radio" name="optionid" checked="checked" value="'
												+ innerValue.id
												+ '" /></td><td style="padding-left:10px">'
												+ innerValue.value
												+ '</td></tr>';
									} else {
										queContantEng = queContantEng
												+ '<tr style="margin-top:10px"><td></td><td><input type="radio" name="optionid" value="'
												+ innerValue.id
												+ '" /></td><td style="padding-left:10px">'
												+ innerValue.value
												+ '</td></tr>';
									}
								});
				queContantEng = queContantEng + '</table></tr></table></div>';

				$("#testView").append(queContantEng);
			});
	
	}
	
	var subjectContant = "";
	$.each(res.DATA.SUBJECT_LIST,
			function(key, value) {
		if(res.DATA.CURRENT_CATEGORY == key){
			subjectContant = subjectContant + '<td style="padding-left: 15px; padding-right: 15px;border-bottom: 2px solid #e4e4e4;font-weight: bold;"><a class="categoryLink" href="#" onclick="setCategory('
			+key+','+"'"+res.DATA.TEST_NAME +"'"+')">'+ value +'</a></td>';
		}else{
			subjectContant = subjectContant + '<td style="padding-left: 15px; padding-right: 15px;"><a class="categoryLink" href="#" onclick="setCategory('
			+key+','+"'"+res.DATA.TEST_NAME +"'"+')">'+ value +'</a></td>';
		}
		
		
	});
	$("#tblTestSubject").html(subjectContant);
	/*
	 * tblTestSubject
	 * 
	 * <td style="padding-left: 25px; padding-right: 25px;"><a
	 * class="categoryLink" href="#" onclick="setCategory(<%=Category.MATHS%>,'<%=testname%>')">
	 * Maths</a></td>
	 */
	$("#hindiTestview").hide();
	$("#englishTestview").show();
}

function testViewClear() {
	$("#selection").html('');
	$("#actionButton").html('');
	$("#testView").html('');
}

function saveNext(queKey) {
	var $add = $("#usertestform");
	var param = new Object();
	var data = getParamObj($add);
	data["queKey"] = queKey;
	if (data["nextkey"] != undefined) {
		data["nextkey"] = parseInt(data["nextkey"]);
	}
	if (data["optionid"] != undefined) {
		data["optionid"] = parseInt(data["optionid"]);
	}
	if (data["optionidhindi"] != undefined) {
		data["optionidhindi"] = parseInt(data["optionidhindi"]);
	}

	param["data"] = JSON.stringify(data);
	ajaxCallEx("usertest/saveanswernext", param, function(res) {
		if (res.STATUS != 1) {
			alert(res.MESSAGE);
			return;
		}
		if (res.DATA > 0) {
			getQuestionOnKey(res.DATA);
		} else {
			initiateTestLoaderaccess();
		}
	});
}

function markReview(queKey) {
	var $add = $("#usertestform");
	var param = new Object();
	var data = getParamObj($add);
	data["queKey"] = queKey;
	if (data["nextkey"] != undefined) {
		data["nextkey"] = parseInt(data["nextkey"]);
	}
	if (data["optionid"] != undefined) {
		data["optionid"] = parseInt(data["optionid"]);
	}
	if (data["optionidhindi"] != undefined) {
		data["optionidhindi"] = parseInt(data["optionidhindi"]);
	}
	

	param["data"] = JSON.stringify(data);
	ajaxCallEx("usertest/markreviewnext", param, function(res) {
		if (res.STATUS != 1) {
			alert(res.MESSAGE);
			return;
		}
		if (res.DATA > 0) {
			getQuestionOnKey(res.DATA);
			// getQuestionOnKeyForward(res.DATA);
		} else {
			initiateTestLoaderaccess();
		}
	});
}

function clearResponse() {
	$("input[name=optionid]").attr('checked', false);
}

function initiatUserLogin() {
	var $registeForm = $("form#RegisterFrm");
	var $loginFrm = $("form#loginFrm");
	$("#errormessage").html('');

	 $("input[name='mobileno']", $registeForm).allowOnlyDigits();
	 $("input[name='pincode']", $registeForm).allowOnlyDigits();


/*	$("#form-Register").hide();
	$("#jsinfo").show(500);
	$("#registerLink").click(function() {
		$("#jsinfo").hide();
		$("#form-login").hide();
		$("#form-Register").toggle(300);
		$("#jsinfo").show();
	});
	
	$("#loginLink").click(function() {
		$("#jsinfo").hide();
		$("#form-Register").toggle(300);
		$("#form-login").show();
		$("#jsinfo").show();
	});*/


	$("#slideshow > div:gt(0)").hide();

	setInterval(function() {
		$('#slideshow > div:first').fadeOut(1000).next().fadeIn(1000).end()
				.appendTo('#slideshow');
	}, 3000);
	
	 var validateRegisterDetails = function() {
		
		 $registeForm.validate({
			highlight : function(element) {
				$(element).addClass("inputerror");
			},
			unhighlight : function(element) {
				$(element).removeClass("inputerror");
			},
            rules: {
            	email: {
                    required: true
                },
                address: {
                    required: true
                },
                pwd: {
                    required: true
                },
                cpwd: {
                    required: true
                },
                mobileno: {
                    required: true
                },
                firstname: {
                    required: true
                },
                lastname: {
                    required: true
                },
                pincode: {
                    required: true
                }      
            },
            messages: {
              /*  email: {
                	 required: ""
              
                },
                address: {
                	 required: ""
                },
                pwd: {
                	 required: ""
                },
                cpwd: {
                	 required: ""
                },
                mobileno: {
                	 required: ""
                },
                firstname: {
                	 required: ""
                },
                lastname: {
                	 required: ""
                },
                pincode: {
                	 required: ""
                }      */
            }
        });
		 var chk =  $($registeForm).valid();
		 var dckh = true;
			 if($("form#RegisterFrm select[name=gender]").val() == ""){
				 $("form#RegisterFrm select[name=gender]").css({"border-color": "red"});
				 dckh = false;
			 }else{
				 dckh = true;
				
			 } 
			
			 
		var mainchk = false;
		if(chk == true && dckh == true){
			mainchk = true;
		}
		return mainchk;
	 };

	var onRegisterBtnClick = function() {
		 if (!validateRegisterDetails()) {
	            return;
	       }
		$("#errormessage").html('');
		var $registerform = $registeForm;
		var param = new Object();
		var data = getParamObj($registerform);

		param["data"] = JSON.stringify(data);

		ajaxCallEx("auth/signup", param, function(res) {
			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			if (res.STATUS == 5) {
				var pageUrl = res.DATA;
				window.location = baseUrl + pageUrl;
			}
			if (res.STATUS == 1) {
				var pageUrl = res.DATA;
				window.location = baseUrl + pageUrl;
			}
		});
	};
	
	 var validateLoginDetails = function() {
		 $loginFrm.validate({
			highlight : function(element) {
				$(element).addClass("inputerror");
			},
			unhighlight : function(element) {
				$(element).removeClass("inputerror");
			},
            rules: {
            	email: {
                    required: true
                },
                pwd: {
                    required: true
                }
            },
            messages: {
            	email: {
                    required: ""
                },
                pwd: {
                    required: ""
                }
            }
        });
		return $($loginFrm).valid();
	 };
	 
	var onLoginBtnClick = function() {
		  if (!validateLoginDetails()) {
	            return;
	       }
		$("#errormessage").html('');
		var param = new Object();
		var data = getParamObj($loginFrm);
		
		
        /*if (!$loginFrm.valid()) {
        	
        	
        	$("form#loginFrm input[type='text'],form#loginFrm input[type='password']").each(function(key, value) {
        		$(this).prop('required',true);
        	   // alert(this.value);
        	});
        	
        	 $("input[type='text']").each(function() {
        		 
        		 
        		 $(this).prop('required',true);
        	        //$(this).removeClass("requiredInput");
        	    });
            return;
        }
*/

		param["data"] = JSON.stringify(data);

		ajaxCallEx("auth/login", param, function(res) {
			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			if (res.STATUS == 7) {
				showErrorMsg(res.DATA);
				return;
			}
			if (res.STATUS == 5) {
				var pageUrl = res.DATA;
				window.location = baseUrl + pageUrl;
			}
			if (res.STATUS == 1) {
				var pageUrl = res.DATA;
				window.location = baseUrl + pageUrl;
			}
		});
	};
	
	var onLoginResetBtnClick = function() {

		$("#errormessage").html('');
		 $("form#loginFrm input[type='text'],form#loginFrm input[type='password']").each(function(key, value) {
			 $(this).removeClass("inputerror");
     		$(this).prop('value','');
     	});
     	
	};
	
	

	$("input[type='button'][name='register']", $registeForm).on("click",
			onRegisterBtnClick);

	$("input[type='button'][name='loginBtn']", $loginFrm).on("click",
			onLoginBtnClick);
	
	$("input[type='button'][name='resetBtn']", $loginFrm).on("click",
			onLoginResetBtnClick);
	
	
}

function showErrorMsg(message) {
	$("#errormessage").html(
			'<label style="color: red;">' + message + '</label>');
	$("#errormessage").show().delay(4000).fadeOut();
}



function viewCategorySummary(category){
	
	switch (category) {
		case '1':
			$(".ibox #testCate1").show();
			$(".ibox #testCate2").hide();
			$(".ibox #testCate3").hide();
			$(".ibox #testCate4").hide();
			$(".ibox #testCate5").hide();
			break;
		case '2':
			$(".ibox #testCate1").hide();
			$(".ibox #testCate2").show();
			$(".ibox #testCate3").hide();
			$(".ibox #testCate4").hide();
			$(".ibox #testCate5").hide();
			break;
		case '3':
			$(".ibox #testCate1").hide();
			$(".ibox #testCate2").hide();
			$(".ibox #testCate3").show();
			$(".ibox #testCate4").hide();
			$(".ibox #testCate5").hide();
			break;
		case '4':
			$(".ibox #testCate1").hide();
			$(".ibox #testCate2").hide();
			$(".ibox #testCate3").hide();
			$(".ibox #testCate4").show();
			$(".ibox #testCate5").hide();
			break;
		case '5':
			$(".ibox #testCate1").hide();
			$(".ibox #testCate2").hide();
			$(".ibox #testCate3").hide();
			$(".ibox #testCate4").hide();
			$(".ibox #testCate5").show();
			break;
		default:
			
			break;
	}
	
}

function initiateTestResultLoader() {
	ajaxCallEx(
			"testresult",
			null,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#resultFrm-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#result-container').html(resultHTML);
				}
			});
}


function initiatPaymentGateway(){
	var $cartFrm = $("form#cartfrm");
	
	$('a[id^="dismore"]').click(function() {
	    var p = $(this).prev('p[id^="itemDiscription"]');
	    
	    var lineheight = parseInt(p.css('line-height'));
	    if (parseInt(p.css('height')) == lineheight*2) {
	       p.css('height','auto');
	       $(this).text('Less');
	    } else {
	       p.css('height',lineheight*2+'px');
	       $(this).text('More');
	    }
	});
	
	var onCheckOutBtnClick = function() {
		
		var param = getParamObj($cartFrm);
		if (param["pgid"] != undefined) {
			param["pgid"] = parseInt(param["pgid"]);
		}
		if (param["items"] != undefined) {
			param["items"] = parseInt(param["items"]);
		}
		confirmPg(param);
	};
	
	   var confirmPg = function(param) {
		   ajaxCallEx("confirmpg", {"data": JSON.stringify(param)}, function(res) {
	            if (res.STATUS !== 1) {
	                alert("issue wile confirm pyment");
	                return;
	            }
	            var formParam = res.DATA.formparam;
	            var $form = $("<form />");
	            if (formParam !== undefined) {
	                for (var key in formParam) {
	                    var $input = $("<input />").attr({"type": "hidden", "name": key, "value": formParam[key]});
	                    $form.append($input);
	                }
	            }
	            $form.attr({"action": res.DATA.url, "method": res.DATA.method});
	            //$form.append($input);
	            $("body").append($form);
	            $form[0].submit();
	        });
	    };
	
	
	$("input[type='button'][name='checkOutbtn']", $cartFrm).on("click",
			onCheckOutBtnClick);
}


function onSelectSubCategory(id){

	var param = new Object();
	param["data"] = '{"c_id":' + id + '}';
	
	ajaxCallEx(
			"question/getallquestionbysubcategory",
			param,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#questionbysubcategory-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#questionbysubcategory-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#questionbysubcategory-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
				
			});
}

function getDataOnCategory(catid){

	var param = new Object();
	param["data"] = '{"categoryid":' + catid + '}';
	ajaxCallEx(
			"getalldeskdocsubcategorybycategoryid",
			param,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#mydocsubcategory-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mydocsubcategory-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mydocsubcategory-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
	
	ajaxCallEx(
			"getallwebdocumentbycategoryid",
			param,
			function(res) {
				if (res.STATUS == 1) {
					var templateSource = $("#mydocs-template").html(), template = Handlebars
							.compile(templateSource), resultHTML = template(res);

					$('#mydocs-container').html(resultHTML);
				}
				if (res.STATUS == 2) {
					$('#mydocs-container').html(
							'<b>' + res.MESSAGE + '</b>');
				}
			});
	
}

function onSelectGetDocument(docid){
	var $controlFrm = $("form#controlFrm");
	var param = new Object();
	var $control =  $("#controlFrm #controlDoc");
	
	var data = getParamObj($controlFrm);
	if (data["docid"] != undefined) {
		data["docid"] = parseInt(data["docid"]);
	}

		param["data"] = JSON.stringify(data);
		ajaxCallEx("/doc/controls/getWebGenContent", param, function(res) {

			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			
			if (res.STATUS == 5) {
				var pageUrl = res.DATA;
				window.location = baseUrl + pageUrl;
			}
			if (res.STATUS == 1) {
				$("#controlFrm #category").val(res.DATA.docCategoryId);
				
				 $("#controlFrm #docTitle").val(res.DATA.title);
				 $("#controlFrm #docNext").val(res.DATA.next);
				 $("#controlFrm #docPrev").val(res.DATA.previous);
				 $("#controlFrm #docOther").val(res.DATA.other);
				 $("#controlFrm #q_cat").val(res.DATA.docSubCategoryId);
				 
				 
				 
				 
				$($control).html(res.DATA.content);
				
			}
		});
		
	}

function generateControllerHtml(){


	
	function handler_hover(e) {
		var x = e.clientX, y = e.clientY,
        elementOnMouseOver = document.elementFromPoint(x, y);
       // elementClass=$(elementOnMouseOver).attr('class');
	   
	    	var htmlString = window.prompt("prompt goes here", $(elementOnMouseOver).html());
	    	$(elementOnMouseOver).html( htmlString );
	    
	}
	
	
	$(".el").on("click" , handler_hover);
	
	var curr_par;
	
	$("#controlClass #anchor").click(function(){
	    $("#controlDoc").append("<a href=\"#\">Appended text</a>");
	});
	
	
	$("#controlClass #paragraph").click(function(){
		curr_par= countControls("p") + 1; 
	    $("#controlDoc").append("<p class=\"pgraph"+ curr_par +" \"><textarea rows=\"10\" cols=\"90\" name=\"pgraphtext\"></textarea></p>");
	});
	
	
	$("#controlClass #horizontal").click(function(){
	    $("#controlDoc").append("<hr>");
	});
	
	$("#controlClass #head2").click(function(){
	    $("#controlDoc").append("<h2>Heading 2</h2>");
	});
	
	$("#controlClass #head3").click(function(){
	    $("#controlDoc").append("<h3>Heading 3</h3>");
	});
	
	$("#controlClass #head4").click(function(){
	    $("#controlDoc").append("<h4>Heading 4</h4>");
	});
	
	$("#controlClass #head5").click(function(){
	    $("#controlDoc").append("<h5>Heading 5</h5>");
	});
	
	$("#controlClass #table").click(function(){
	    $("#controlDoc").append("<table style=\"text-align: center;\" id=\"myTable\" class=\"table table-bordered\" width=\"100%\" border=\"0\"></table>");
	    rn = window.prompt("Input number of rows", 1);
	    cn = window.prompt("Input number of columns",1);
	      
	     for(var r=0;r<parseInt(rn,10);r++)
	      {
	       var x=document.getElementById('myTable').insertRow(r);
	       for(var c=0;c<parseInt(cn,10);c++)  
	        {
	         var y=  x.insertCell(c);
	         y.innerHTML="Row-"+r+" Column-"+c; 
	        }
	       }
	});
	
	
	var $controlFrm = $("form#controlFrm");
	
	var onControlBtnClick = function() {
		curr_par= countControls("p"); 
		
		var param = new Object();
		var $control = "#controlDoc .pgraph" + curr_par;
		var data = getParamObj($controlFrm);

		param["data"] = JSON.stringify(data);

		ajaxCallEx("doc/controls/webGen", param, function(res) {
			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			
			if (res.STATUS == 1) {
				
				$($control).html(res.DATA.pgraph);
			}
		});
	};
	
	
	
	var onGetWebGenerateBtnClick = function() {
		
		var param = new Object();
		var $control =  $("#controlFrm #controlDoc");
		
		var data = getParamObj($controlFrm);
		if (data["docid"] != undefined) {
			data["docid"] = parseInt(data["docid"]);
		}
		param["data"] = JSON.stringify(data);
		ajaxCallEx("/doc/controls/getWebGenContent", param, function(res) {
			alert(res.STATUS);
			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			
			if (res.STATUS == 5) {
				var pageUrl = res.DATA;
				window.location = baseUrl + pageUrl;
			}
			if (res.STATUS == 1) {
				 $("#controlFrm #docTitle").val(res.DATA.title);
				 $("#controlFrm #docNext").val(res.DATA.next);
				 $("#controlFrm #docPrev").val(res.DATA.previous);
				 $("#controlFrm #docOther").val(res.DATA.other);
				 $("#controlFrm #q_cat").val(res.DATA.docSubCategoryId);
				 $("#controlFrm #category").val(res.DATA.docCategoryId);
				 
				 
				 
				$($control).html(res.DATA.content);
			}
		});
	};
	
	var onSaveBtnClick = function() {
		var datacontent =  $("#controlFrm #controlDoc").html();
		//var docId =  "2";  // $("#docid").val;
		//alert(docId);
		var param = new Object();

		//var data = new Object();
		var data = getParamObj($controlFrm);
		
		data["content"] = datacontent;
		
		if (data["docid"] != undefined) {
			data["docid"] = parseInt(data["docid"]);
		}
		
		if (data["q_cat"] != undefined) {
			data["q_cat"] = parseInt(data["q_cat"]);
		}
		if (data["category"] != undefined) {
			data["category"] = parseInt(data["category"]);
		}
		category
		var questionIds = new Array();
        $("input[name='chkQueqIdBox']:checked", $controlFrm).each(function() {
        	
            questionIds.push(parseInt(this.value));
        });
        data["questionSet"] = questionIds;
		param["data"] = JSON.stringify(data);

		ajaxCallEx("doc/controls/saveWebGen", param, function(res) {
			if (res.STATUS == 2) {
				alert(res.MESSAGE);
				return;
			}
			
			if (res.STATUS == 1) {
			 $("#controlFrm #controlDoc").html(res.DATA.content);
			}
		});
	};
	
	$("input[type='button'][name='submitbtn']", $controlFrm).on("click",
			onControlBtnClick);
	
	$("input[type='button'][name='insertbtn']", $controlFrm).on("click",
			onSaveBtnClick);
	
	$("input[type='button'][name='getWebContentbtn']", $controlFrm).on("click",
			onGetWebGenerateBtnClick);
	
	
	
}

function countControls(control){
	var n=0;
	$(control).each(function(){
		n =n+1;
	});
	return n;
}