// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready( function() {
  $("#tabs").tabs();
  $("#accordion").accordion();
  $("#sortable").sortable();
  $(".draggable").draggable({
    connectToSortable:  ".sortable",
    helper:             "clone",
    revert:             "invalid"
  });
  //-----------
  // -
  $("#info").droppable({
    accept: ".data",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 7;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        $("<li></li>").text( ui.draggable.text() ).appendTo( this);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  // -
  $("#icon1").droppable({
    accept: ".icons",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        $("<li></li>").text( ui.draggable.text() ).appendTo( this);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  // -
  $("#icon2").droppable({
    accept: ".icons",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        $("<li></li>").text( ui.draggable.text() ).appendTo( this);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  // -
  $("#comment").droppable({
    accept: ".comments",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        $("<li></li>").text( ui.draggable.text() ).appendTo( this);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  $("#doc").droppable({
    accept: ".docs",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        $("<li></li>").text( ui.draggable.text() ).appendTo( this);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  //-
  //-
  $("#image").droppable({
    accept: ".images",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        $("<li></li>").text( ui.draggable.text() ).appendTo( this);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    } // drop
  });
});
