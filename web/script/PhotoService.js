(function(){
    'use strict';

    angular.module('MyProfileApp')
        .service('photoService', ['$q', PhotoService]);

    /**
     * Users DataService
     * Uses embedded, hard-coded data model; acts asynchronously to simulate
     * remote data service call(s).
     *
     * @returns {{loadAll: Function}}
     * @constructor
     */
    function PhotoService($q){
        var photos = [
            {
                title: 'Wedding Gift',
                desc: 'A Wedding Gift for two of my Closed Friends and Colleagues',
                url: './img/IMG_6461.jpg'
            },
            {
                title: 'Beloving High Heels!',
                desc: 'I can be Too Tall with my Beloving High Heels!',
                url: './img/IMG_6462.jpg'
            },
            {
                title: 'Grammatical Error',
                desc: 'Mayank Loves Correcting my Use of English.. and Yet I Made Another Grammatical Error in the Sketch!',
                url: './img/IMG_6463.jpg'
            },
            {
                title: 'Favourite Topics',
                desc: 'The Favourite Topics between my Girl Friends and Me',
                url: './img/IMG_6464.jpg'
            },
            {
                title: 'Dream',
                desc: 'The Dream of a Fabulous Figure',
                url: './img/IMG_6466.jpg'
            }
        ];

        // Promise-based API
        return {
            loadAllPhotos : function() {
                // Simulate async nature of real remote calls
                return $q.when(photos);
            }
        };
    }

})();
