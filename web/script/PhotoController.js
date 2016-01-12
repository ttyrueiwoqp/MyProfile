(function () {

    angular
        .module('MyProfileApp')
        .controller('PhotoController', [
            'photoService', '$mdSidenav', '$mdBottomSheet', '$log',
            PhotoController
        ]);

    function PhotoController(photoService, $mdSidenav, $mdBottomSheet, $log) {
        var self = this;

        self.selected = null;
        self.photos = [];
        self.selectPhoto = selectPhoto;
        self.toggleList = toggleList;

        photoService
            .loadAllPhotos()
            .then( function( photos ) {
                self.photos    = [].concat(photos);
                self.selected = photos[0];
            });

        function toggleList() {
            $mdSidenav('left').toggle();
        }

        function selectPhoto(photo) {
            self.selected = angular.isNumber(photo) ? $scope.photos[photo] : photo;
            self.toggleList();
        }
    }

})();