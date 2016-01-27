(function () {

    angular
        .module('MyProfileApp')
        .controller('PhotoController', [
            'photoService', '$mdSidenav',
            PhotoController
        ]);

    function PhotoController(photoService, $mdSidenav) {
        var self = this;

        self.selected = null;
        self.photos = [];
        self.selectPhoto = selectPhoto;
        self.toggleList = toggleList;
        self.isSelected = isSelected;

        photoService
            .loadAllPhotos()
            .then(function (photos) {
                self.photos = [].concat(photos);
                self.selected = photos[0];
            });

        function toggleList() {
            $mdSidenav('left').toggle();
        }

        function selectPhoto(photo) {
            self.selected = angular.isNumber(photo) ? self.photos[photo] : photo;
            self.toggleList();
        }

        function isSelected(photo) {
            return self.selected == photo;
        }
    }

})();