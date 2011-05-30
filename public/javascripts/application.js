// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready( function() {
  
  //-----------------------------------------------------------------------
  // jQuery-UI

  //--
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
        var type = ui.draggable.text();
        $("<li></li>").text( type ).appendTo( this);
        $(":input[class=data][value=unused]:first").attr('value', type);
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
        var type = ui.draggable.text();
        $("<li></li>").text( type ).appendTo( this);
        $("#site_photo2").attr('value', type);
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
        var type = ui.draggable.text();
        $("<li></li>").text( type ).appendTo( this);
        $("#site_photo3").attr('value', type);
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
        var type = ui.draggable.text();
        $("<li></li>").text( type ).appendTo( this);
        $("#site_comment").attr('value', type);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  //-
  $("#doc").droppable({
    accept: ".docs",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        var type = ui.draggable.text();
        $("<li></li>").text( type ).appendTo( this);
        $("#site_doc").attr('value', type);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    }   // drop 
  });

  //-
  $("#image").droppable({
    accept: ".images",
    drop:   function( event, ui ){
      var MAX_INFO_FIELDS = 1;
      var n = $( this ).find("li").length;
      if (n < MAX_INFO_FIELDS ){
        var type = ui.draggable.text();
        $("<li></li>").text( type ).appendTo( this);
        $("#site_photo").attr('value', type);
        if ( n == (MAX_INFO_FIELDS - 1)){ $(this).find("#add").remove();}
      } // if
    } // drop
  });
  //--
  $(".datepicker").datepicker({
    dateFormat: 'D,M d'
   });

// --------------------------------------------------------------------

});
