var app = angular.module('minhaApp', []);

/* Declarando um controller para nossa aplicação */
app.controller('meuController', meuController);

/* Criando a função que será executada pelo controller */
function meuController($scope, $http) {
  /* Declarar aqui as variávies scope */

  $scope.buscarItemsBD = function () {

    $scope.categoriaURL = new URLSearchParams(window.location.search);
    $scope.categoria = $scope.categoriaURL.get('categoria');

    console.log($scope.categoria);

    $http.get('./produtosDB.php?categoria=' + $scope.categoria)
      .success(function (dados) {
        $scope.produtosdb = dados;
        console.log($scope.produtosdb)
      });
  }


  $scope.buscarItem = function () {

    $scope.codigoURL = new URLSearchParams(window.location.search);

    $scope.codigoItem = $scope.codigoURL.get('codigo');
    
    $http.get('./productDB.php?codigo='+ $scope.codigoItem )
      .success(function (dados) {
        $scope.productdb = dados;
        console.log($scope.productdb)
      });
  }

  /* Declarar aqui as funções que a aplicação irá executar */

  /* Dentro desta função você poderá chamar outras funções que deseja executar ao carregar o site */
  $scope.carregarDados = function () {
    $scope.buscarFilmeBD();
    $scope.buscarItem();

  };
}
