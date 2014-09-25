menuCreator.controller('menuCtrl', ['$scope', '$http', function ($scope, $http) {

  $http.get('/menus.json').success(function(menus){
    $scope.menus = menus;
  });

}]);