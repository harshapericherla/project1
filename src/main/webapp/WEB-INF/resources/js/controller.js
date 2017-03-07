var app = angular.module("app",[]);
app.controller("ProductController",function($scope,$http){
	$scope.addToCart = function(productId){
		$http.put('http://localhost:8080/projectone/cart/addCartItem/'+productId).success(function(){
			alert("Product sucessfully added to the cart");
		});
	}
  
	$scope.getCart=function(cartId){
		
		$http.get('http://localhost:8080/projectone/cart/getCart/'+cartId).success(function(data){
			$scope.cart=data;
		});
	}

});