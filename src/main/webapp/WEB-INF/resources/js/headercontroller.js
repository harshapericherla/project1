var main = angular.module('main',['header','product']);
var appe = angular.module("header",[]);
appe.controller("headercontroller",['$scope','$http',function($scope,$http){
	
	$scope.getcount = function(){
		$http.get("http://localhost:8081/projectone/getcount").success(function(data){
			$scope.countobj = data;
		});
	}
	
	$scope.totalcount = function(){
		var total = 0;
		for(i in $scope.countobj){
			total = total + $scope.countobj[i].count;
		}
		return total;
	}
	
}]);

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