$(document).ready(function(){
    
    $(window).on("load",function(){
    	
    	$("li:nth-child(1)>a>span.on").addClass("active");
    	setInterval(blink(),3000);
    });	
	function size(){
	var size = $(window).width();
	return size;
	}
	function setSize(){
	  if(size()>900){
		$(".navbar-default").addClass("fixed-nav-bar");
	 }
	  else{
		  $(".navbar-default").removeClass("fixed-nav-bar");
	  }
	}
	
	$(window).resize(function(){
		setSize();
	});
    
	$("section#one h1").animate({top: '340'},2000).animate({top:'320'},1000);
	
	function blink(){
		$('li>a>span.on').bind("click",function(){
			
			$('.on').removeClass("active");
			$(this).addClass("active");
			
		});
	}
	setSize();
	blink();
	
	
});