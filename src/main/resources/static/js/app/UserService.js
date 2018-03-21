'use strict';

angular.module('crudApp').factory('UserService',
    ['$localStorage', '$http', '$q', 'urls',
        function ($localStorage, $http, $q, urls) {

            var factory = {
                loadAllUsers: loadAllUsers,
                loadAllSensors: loadAllSensors,
                loadAllContadores: loadAllContadores,
                getAllUsers: getAllUsers,
                getAllContadores: getAllContadores,
                getAllSensor: getAllSensor
            };

            return factory;

            function loadAllUsers() {
                var deferred = $q.defer();
                $http.get(urls.USER_SERVICE_API)
                    .then(
                        function (response) {
                            $localStorage.users = response.data;
                            deferred.resolve(response);
                        },
                        function (errResponse) {
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function loadAllSensors() {
            	var deferred = $q.defer();
            	$http.get('http://localhost:8080/SpringBootCRUDApp/api/sensor/')
            	.then(
            			function (response) {
            				$localStorage.sensor = response.data;
            				deferred.resolve(response);
            			},
            			function (errResponse) {
            				deferred.reject(errResponse);
            			}
            	);
            	return deferred.promise;
            }
            
            function loadAllContadores() {
            	var deferred = $q.defer();
            	$http.get('http://localhost:8080/SpringBootCRUDApp/api/contador/')
            	.then(
            			function (response) {
            				$localStorage.contador = response.data;
            				deferred.resolve(response);
            			},
            			function (errResponse) {
            				deferred.reject(errResponse);
            			}
            	);
            	return deferred.promise;
            }

            function getAllUsers(){
                return $localStorage.users;
            }

            function getAllSensor(){
            	return $localStorage.sensor;
            }
            
            function getAllContadores(){
            	return $localStorage.contador;
            }
        }
    ]);