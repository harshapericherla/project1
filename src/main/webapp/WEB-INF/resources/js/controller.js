var app = angular.module("app",[]);
app.controller("ProductController",function($scope,$http){
	
	var origin= window.location.origin;
	
	
	$scope.addToCart = function(productId){
		$http.put(origin+'/projectone/cart/addCartItem/'+productId).success(function(){
			
			alert("Product sucessfully added to the cart");
		});
	}
  
	$scope.getCart=function(cartId){
		$scope.cartId = cartId;
		$http.get(origin+'/projectone/cart/getCart/'+cartId).success(function(data){
			$scope.cart=data;
	
		});
	}
  $scope.removeFromCart=function(cartItemId){
	  
	  $http.put(origin+'/projectone/cart/removeCartItem/'+cartItemId).success(function(){
		  $scope.getCart($scope.cartId);
	  });
  }
  $scope.clearCart=function(){
	
	 $http.put(origin+'/projectone/cart/removeAllCartItems/'+$scope.cartId).success(function(){
		 $scope.getCart($scope.cartId);
	 })
  }
  $scope.calculateGrandTotal=function(){
	  var grandTotal = 0.0;
	  for(i=0;i<$scope.cart.cartItems.length;i++){
		   grandTotal = grandTotal+$scope.cart.cartItems[i].totalPrice;
	  }
	  return grandTotal;
  }
 
  $scope.check=function(productId){
	   var quantity = this.quant;
     $http.put(origin+'/projectone/cart/updatequan/'+productId+'/'+quantity).success(function(){
    	 $scope.getCart($scope.cartId);
     });
  }
  
 
	     
  
  
});