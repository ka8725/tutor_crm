$(document).ready(function(){

                  $('.task-item').click(function(){
                        if(!$(this).hasClass('item-extra-menu')){
                            $('.extra-menu').show();
                            $(this).addClass('item-extra-menu');
                            $(document.body).bind('mousedown', function(e){
                                        e = $(e.target);
                                        if(!e.parents('.extra-menu').length && !e.parents('.task-item').length) {
                                        $('.extra-menu').hide();
                                        $('.task-item').removeClass('item-extra-menu');
                                        $(document.body).unbind('mousedown');
                                                              }
                                                              });
                                        } else {
                                        $('.extra-menu').hide();
                                        $(this).removeClass('item-extra-menu');
                                        $(document.body).unbind('mousedown');
                                        }
                                        return false;
                                        });
                  
	
	$('.ctrl-panel li, .ctrl-panel li li').toggle(
		function() {
			$(this).addClass('active').find('.arr').addClass('arr-up');
			$(this).siblings('li.active').removeClass('active');
		},
		function() {
			$(this).removeClass('active').find('.arr').removeClass('arr-up');
		}
	);
	
	$('.item').toggle(
		function() {
			$(this).find('.short-view').hide();
			$(this).find('.big-view').show();
		},
		function() {
			$(this).find('.short-view').show();
			$(this).find('.big-view').hide();
		}
	);
});