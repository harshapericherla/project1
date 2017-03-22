var app = angular.module("product",[]);
app.controller("ProController",['$scope','$http',function($scope,$http){
	
	var origin= window.location.origin;
	
	$scope.getObj = function(){
		
		$http.get(origin+'/projectone/all/product/getproobj').success(function(data){
			$scope.obj=data;
			
		});
	}
   
	$scope.addToCart = function(productId){
		$http.put(origin+'/projectone/cart/addCartItem/'+productId).success(function(){
			$scope.value=true;
			alert("PRODUCT SUCESSFULLY ADDED TO THE CART");
		});
	}
}]);