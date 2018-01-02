/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  







//validationend 
$(document).ready(function() {
$(".indicate").hide();
 $(".carousel-fade").mouseover(function(){
     $(".indicate").show();   
    });
	 $(".carousel-fade").mouseout(function(){
     $(".indicate").hide();   
    });
});
 
 $(document).ready(function () {
    $('.modal').on('show.bs.modal', function () {
        if ($(document).height() > $(window).height()) {
            // no-scroll
            $('body').addClass("modal-open-noscroll");
        }
        else {
            $('body').removeClass("modal-open-noscroll");
        }
    });
    $('.modal').on('hide.bs.modal', function () {
        $('body').removeClass("modal-open-noscroll");
    });
});

$(document).ready(function() {
 
  $("#owl-demo").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      pagination: false,
      items : 5,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]
 
  });
 
});
  $(document).ready(
    function() {
        var expanded = false;
        $("#drop").click(
            function(event) {
                if (!expanded) {
                    event.stopPropagation();
                    $(".drp").slideDown(500);
                    expanded = true;
                }
                else {
                    $(".drp").hide();
                    expanded = false;
                }
            }
        );
        $(document).click(
            function () {
                if (expanded) {
                    $(".drp").hide();
                    expanded = false;
                }
            }
        );
        $("#drop").click(
            function(event) {
                event.stopPropagation();
            }
        );
    }
);


$(document).ready(
    function() {
 $("#drop2").on("click", function() {
    $(".drp2").slideToggle( "fast");
  });       
 $(document).click(
            function () {
                
                    $(".drp2").hide();
               
                }
            
        );
    }
    
);

$(document).ready(function() {
  $(".mennu").hover(            
        function() { 
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown(700);
            $(this).toggleClass('open');
			
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).hide();
            $(this).toggleClass('open');       
        }
    );
  
});

     
