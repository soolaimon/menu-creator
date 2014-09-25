menuCreator.controller('menuCtrl', ['$scope', '$http', function ($scope, $http) {

  $scope.search = function (query) {
    $http.get('/search', { params: {q: query}})
      .success(function(menus){
        $scope.menus = menus
      })
    }

    $scope.setMenu = function (menu) {
      $scope.selectedMenu = menu;
    }


}]);