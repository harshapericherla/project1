$(document).ready(function(){
    
   
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
	setSize();
	
	var $navbar = $('ul');
	var $list = $navbar.find('li');
	var $span = $list.find('span');
	var $links = $navbar.find('a');
	var local;
	
	$(".one").hover(function(){
		$(this).css('color','white');
	},function(){
		$(this).css('color','grey');
	});
	
	$links.each(function(index,value){
		$(this).click(function(){
			 window.name = $(this).attr("href");
	      });
	});
	
  	
	var location = window.location.href;
	var name1 = "http://localhost:8081"+window.name;
	var $textcolor = $('a[href*="'+name+'"] .on');
	if(location==name1){
	$textcolor.css('color','white');
	}
  
	
	$links.each(function(){
		$(this).click(function(){
			$span.css('color','grey');
			$(this).find('span').css('color','white');
		});
	});

	if(location=="http://localhost:8081/projectone/" || location=="http://localhost:8081/projectone/home"){
		$('a[href*="/home"] .on').css('color','white');
	}
	if(location=="http://localhost:8081/projectone/login?logout"){
		$('a[href*="/login"] .on').css('color','white');
	}
	if(location=="http://localhost:8081/projectone/all/product/getallproducts"){
		$('a[href*="/getallproducts"] .on').css('color','white');
	}
	if(location=="http://localhost:8081/projectone/admin/product/productform"){
		$('a[href*="/productform"] .on').css('color','white');
	}
	
	
});