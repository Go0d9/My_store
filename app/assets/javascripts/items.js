// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
jQuery(function($){ 
$("td span").click(function() { 
    var current_item_tr = $(this).parents("tr")[0]; 
    if (confirm("Удалить?")) { 
    $.ajax({ 
      url: "items/" + $(current_item_tr).attr("data-item_id"), 
      type: "POST", 
      data: { 
        _method: "DELETE" 
      }, 
      success: function(result) { 
        $(current_item_tr).fadeOut(200); 
        console.log(result); 
      } 
    }); 
  }; 
}); 
});