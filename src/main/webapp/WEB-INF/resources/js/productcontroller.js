var app = angular.module("product",[]);
app.controller("ProController",['$scope','$http',function($scope,$http){
	$scope.getObj = function(){
		
		$http.get('http://localhost:8081/projectone/all/product/getproobj').success(function(data){
			$scope.obj=data;
		});
	}
   
	$scope.addToCart = function(productId){
		$http.put('http://localhost:8081/projectone/cart/addCartItem/'+productId).success(function(){
			
			alert("Product sucessfully added to the cart");
		});
	}
}]);