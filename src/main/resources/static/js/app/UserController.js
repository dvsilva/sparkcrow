'use strict';

angular.module('crudApp').controller('UserController',
    ['UserService', '$scope',  function( UserService, $scope) {

        var self = this;
        self.user = {};
        self.users=[];

        self.getAllUsers = getAllUsers;
        self.getAllSensor = getAllSensor;
        self.getAllContadores = getAllContadores;

        function getAllUsers(){
            return UserService.getAllUsers();
        }

        function getAllSensor(){
        	return UserService.getAllSensor();
        }

        function getAllContadores(){
        	return UserService.getAllContadores();
        }

    }

    ]);