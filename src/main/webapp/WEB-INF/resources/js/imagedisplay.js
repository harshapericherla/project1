$(document).ready(function(){
	var width = 300;
	var animationSpeed =250;
	var currentSlide = 1;
	
	var $slider = $("#slider");
	var $slideContainer = $slider.find('.slides');
	var $slides = $slideContainer.find('.slide');
	var $clickleft = $(".clickleft");
	var $clickright = $(".clickright");
	
	$clickright.click(function(event){
		
		if(!(currentSlide>=$slides.length)){
			currentSlide++;
			$slideContainer.animate({'margin-left':'-='+width},animationSpeed);
		}
	});
	
	$clickleft.click(function(){
		if(!(currentSlide<=1)){
			currentSlide--;
		$slideContainer.animate({'margin-left':'+='+width},animationSpeed);
		}
	});
	
	setInterval(function(){
		if(currentSlide<$slides.length){
			$clickright.prop('disabled',false);
		}
		else if(currentSlide>=$slides.length){
			$clickright.prop('disabled',true);
		}
		if(currentSlide>1){
			$clickleft.prop('disabled',false);
		}
		else if(currentSlide<=1){
			$clickleft.prop('disabled',true);
		}
	},10);
	
	
});