jQuery.extend(jQuery.jgrid.edit, { savekey: [true, 13], closeOnEscape: true, closeAfterEdit: true, clearAfterEdit: true, closeAfterAdd: false, clearAfterAdd: true, reloadAfterSubmit: true, recreateForm: true, jqModal: false,
		afterSubmit: function(response,postdata){successMessage('Success');return [true,'',0];},
		errorTextFormat : function(response){return buildErrorMessage(response.responseText);}
});
jQuery.jgrid.formatter.integer = {thousandsSeparator: ","};
jQuery.extend(jQuery.jgrid.search, {closeOnEscape: true, multipleSearch: false, closeAfterSearch: true });
jQuery.extend(jQuery.jgrid.nav, {view: false, del: true, add: true, edit: true, search: true});
jQuery.extend(jQuery.jgrid.defaults, { altRows:true,datatype: 'json',mtype: 'GET',height: '100%',viewrecords: true,jsonReader : {repeatitems: false},multiselect: true,
ondblClickRow: function(rowid) {jQuery(this).jqGrid('editGridRow', rowid,{savekey: [true, 13],width:650, recreateForm:true,closeAfterEdit:true,closeOnEscape:true,reloadAfterSubmit:true,jqModal: false,clearAfterAdd: true,closeAfterAdd: false});
	}
 }
);