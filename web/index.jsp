<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Li's Sketch Book</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="./bower_components/angular-material/angular-material.css">
    <link rel="stylesheet" href="./style/profile.css">
</head>
<body ng-app="MyProfileApp" layout="row" ng-controller="PhotoController as photoCtrl" ng-cloak>

<md-sidenav class="md-sidenav-left md-whiteframe-z2"
            md-component-id="left"
            md-is-locked-open="$mdMedia('gt-sm')">

    <md-toolbar>
        <h2 class="md-toolbar-tools">
            <span>Li's Sketch Book</span>
        </h2>
    </md-toolbar>

    <md-content flex>
        <md-list layout="column" layout-padding>
            <md-list-item ng-repeat="photo in photoCtrl.photos">
                <div class="md-list-item-text no-select"
                     layout="column" layout-padding
                     ng-click="photoCtrl.selectPhoto(photo)"
                     ng-class="{'selected': photoCtrl.isSelected(photo)}">
                    <span>{{photo.title}}</span>
                </div>
            </md-list-item>
        </md-list>
    </md-content>

</md-sidenav>

<div flex layout="column" tabIndex="-1" role="main" class="md-whiteframe-z2">

    <md-toolbar>
        <div class="md-toolbar-tools">
            <md-button class="menu" hide-gt-sm ng-click="photoCtrl.toggleList()" aria-label="Show Photo List">
                <md-icon md-font-set="material-icons">menu</md-icon>
            </md-button>
            <div layout="column" layout-align="center center">
                <span>Sketch of My Life: {{photoCtrl.selected.desc}}</span>
            </div>
        </div>
    </md-toolbar>

    <md-content flex layout-padding layout-margin>
        <section>
            <div layout="column" layout-align="center center" class="image">
                <img ng-src="{{photoCtrl.selected.url}}" height="600" width="800">
            </div>
        </section>
        <section>
            <md-subheader class="md-accent">
                <div layout="column" layout-align="center center">
                    <h3>Welcome to Li’s Sketch Book!</h3>
                    <h3>All the sketches are inspired by moments of my own life.</h3>
                    <h3>I drew all the sketches on iPad and shared them with my friends on social media.</h3>
                    <h3>Hope these drawings give you a glimpse of me!</h3>
                </div>
            </md-subheader>
        </section>
    </md-content>

</div>

<script src="./bower_components/angular/angular.min.js"></script>
<script src="./bower_components/angular-aria/angular-aria.min.js"></script>
<script src="./bower_components/angular-animate/angular-animate.min.js"></script>
<script src="./bower_components/angular-messages/angular-messages.min.js"></script>
<script src="./bower_components/angular-material/angular-material.js"></script>

<script src="./script/main.js"></script>
<script src="./script/PhotoController.js"></script>
<script src="./script/PhotoService.js"></script>
</body>
</html>
