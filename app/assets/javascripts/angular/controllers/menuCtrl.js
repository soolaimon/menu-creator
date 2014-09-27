menuCreator.controller('menuCtrl', ['$scope', '$http', function ($scope, $http) {

  $scope.search = function (query) {
    $http.get('/search', { params: {q: query}})
      .success(function(menus){
        $scope.menus = menus;
      })
    }

  $scope.menuFilters = {};

  $scope.toggleFilter = function (filter) {
    if ($scope.menuFilters.hasOwnProperty(filter)){
      delete $scope.menuFilters[filter];
    } else {
      $scope.menuFilters[filter] = true;
    }
  }

  $scope.setMenu = function (menu) {
    $scope.selectedMenu = menu;
  };




}]);