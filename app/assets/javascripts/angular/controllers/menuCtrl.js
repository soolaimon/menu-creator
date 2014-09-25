menuCreator.controller('menuCtrl', ['$scope', '$http', function ($scope, $http) {

  $scope.search = function (query) {
    $http.get('/search', { params: {q: query}})
      .success(function(menus){
        $scope.menus = menus
        console.log($scope.menus[0])
      })
    }
}]);