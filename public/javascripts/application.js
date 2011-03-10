// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function buildErrorMessage(jsonData) {
  var msgText='';
  var objMsg=$.parseJSON(jsonData);
  $.each(objMsg, function(key, val) {msgText += '* ' + key + ' ' + val + '<br />'});
  return msgText; 
}

function successMessage(msgText) {
	$.jnotify(msgText);	
}

function errorMessage(response) {
	$.jnotify("An error occurred.","error");
	// ** todo: log this somehow -- something bad happened when making an ajax call	
}
function startLoading() {
	$("#page").fadeTo("fast",.6);
	$("#ajax-indicator").show();
}

function endLoading() {
	$("#ajax-indicator").hide();		
	$("#page").fadeTo("fast",1);
}

// TODO: we can delete this if we don't have any add/update forms anymore 
function bindAjaxFormEvents() {
	ajax_forms=$('form[id*="ajax"]');
	jQuery(function($){ 
	   ajax_forms
	      .bind('ajax:beforeSend', function() {startLoading();})
	      .bind('ajax:success', function(xhr, response, status) {
              successMessage($("#" + this.id).find('#success_message').val());
							this.reset();
             })
	      .bind('ajax:failure', function(xhr, response, status) {errorOccurred(response);})
	      .bind('ajax:complete', function(xhr, response, status) {
           endLoading();
           displayWarningIfNeeded(response);
         });
	});
}

function displayWarningIfNeeded(response) {
if (response.status > 400 && response.status < 450) {
		$.jnotify("There was a problem: " + buildErrorMessage(response.responseText),"warning",7000);
	}
}

$(document).ready(
    function()
    {
			bindAjaxFormEvents();
    }
);

// END TODO remove functions