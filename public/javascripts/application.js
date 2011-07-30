// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// this builds an error message to be shown to the user from the rails model error messages returned
function buildErrorMessage(jsonData) {
  var msgText='';
  var objMsg=$.parseJSON(jsonData);
  $.each(objMsg, function(key, val) {
			msgText += '* '; 
			if (String(val).substr(0,1) == '^')  // an initial ^ in the rails error message indicates a custom error that should not show the attribute
			{
				msgText += String(val).replace('^','') + '<br />';
			} 
			else 
			{
				msgText += key + ' ' + val + '<br />';
	    }
		}
	);
  return msgText; 
}

function successMessage(msgText) {
	$.jnotify(msgText);	
}

function errorMessage(msgText) {
	$.jnotify("An error occurred. " + response,"error");
	// ** todo: log this somehow -- something bad happened when making an ajax call	
}

function warningMessage(msgText) {
	$.jnotify(msgText,"warning");
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

// special functions that are used to create the values jqGrid needs to do proper paging, using the EOL API json as a direct source
function onPageFromEOL (obj) {
	if (obj.self) {	return obj.self.substr(obj.self.lastIndexOf('page=')+5);}
		else
		{ return 1; }
}

// special functions that are used to create the values jqGrid needs to do proper paging, using the EOL API json as a direct source
function totalPagesFromEOL (obj) {
	if (obj.self) {return Math.ceil(parseFloat(obj.totalResults)/parseFloat(obj.itemsPerPage));}
		else
		{ return 1; }		
}

function removeBottomToolbarButtons (name) {
	// since we have the toolbar at the top of the jqGrid page now, we can remove the toolbar buttons from the bottom
	var bottomPagerDiv = $("div#" + name + "taxa_pager")[0];	
	$("#edit_" + name + "_table", bottomPagerDiv).remove();
	$("#del_" + name + "_table", bottomPagerDiv).remove();
	$("#add_" + name + "_table", bottomPagerDiv).remove();
	$("#search_" + name + "_table", bottomPagerDiv).remove();	
}

// TODO: we can delete this if we don't have any custom add/update forms anymore 
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