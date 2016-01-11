<%--
  Created by IntelliJ IDEA.
  User: FJ
  Date: 1/11/2016
  Time: 11:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Qiao Li's Profile</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">
    <link rel="stylesheet" href="./bower_components/angular-material/angular-material.css">
</head>
<body ng-app="MyProfileApp">
This is my profile.

<div ng-controller="ProfileCtrl" ng-cloak>
    <md-content>
        <br>
        <md-toolbar>
            <div class="md-toolbar-tools">
                <md-button class="md-icon-button" aria-label="Settings">
                    <md-icon md-svg-icon="img/icons/menu.svg"></md-icon>
                </md-button>
                <h2>
                    <span>Toolbar with Icon Buttons</span>
                </h2>
                <span flex></span>
                <md-button class="md-icon-button" aria-label="Favorite">
                    <md-icon md-svg-icon="img/icons/favorite.svg" style="color: greenyellow;"></md-icon>
                </md-button>
                <md-button class="md-icon-button" aria-label="More">
                    <md-icon md-svg-icon="img/icons/more_vert.svg"></md-icon>
                </md-button>
            </div>
        </md-toolbar>
        <br>
        <md-toolbar>
            <div class="md-toolbar-tools">
                <md-button aria-label="Go Back">
                    Go Back
                </md-button>
                <h2>
                    <span>Toolbar with Standard Buttons</span>
                </h2>
                <span flex></span>
                <md-button class="md-raised" aria-label="Learn More">
                    Learn More
                </md-button>
                <md-button class="md-fab md-mini" aria-label="Favorite">
                    <md-icon md-svg-icon="img/icons/favorite.svg"></md-icon>
                </md-button>
            </div>
        </md-toolbar>
        <br>
        <md-toolbar class="md-tall md-accent">
            <h2 class="md-toolbar-tools">
                <span>Toolbar: tall (md-accent)</span>
            </h2>
        </md-toolbar>
        <br>
        <md-toolbar class="md-tall md-warn md-hue-3">
            <span flex></span>
            <h2 class="md-toolbar-tools md-toolbar-tools-bottom">
                <span class="md-flex">Toolbar: tall with actions pin to the bottom (md-warn md-hue-3)</span>
            </h2>
        </md-toolbar>
    </md-content>
</div>


<script src="./bower_components/angular/angular.js"></script>
<script src="./bower_components/angular-aria/angular-aria.js"></script>
<script src="./bower_components/angular-animate/angular-animate.js"></script>
<script src="./bower_components/angular-material/angular-material.js"></script>
<script>
    angular.module('MyProfileApp', ['ngMaterial'])
            .controller("ProfileCtrl", function () {
                console.log(1);
            });
</script>
</body>
</html>
