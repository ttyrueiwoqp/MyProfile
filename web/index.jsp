<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Qiao Li's Profile</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="./bower_components/angular-material/angular-material.css">
    <link rel="stylesheet" href="./style/profile.css">
</head>
<body ng-app="MyProfileApp" layout="row" ng-controller="PhotoController as profileCtrl" ng-cloak>

<md-sidenav class="site-sidenav md-sidenav-left md-whiteframe-z2"
            md-component-id="left"
            md-is-locked-open="$mdMedia('gt-sm')">

    <md-toolbar>
        <div class="md-toolbar-tools">
            <h2>
                <span>Qiao Li's Profile</span>
            </h2>
        </div>
    </md-toolbar>

    <md-list>
        <md-list-item ng-repeat="photo in profileCtrl.photos">
            <md-button ng-click="profileCtrl.selectPhoto(photo)"
                       ng-class="{'selected' : photo === profileCtrl.selected }">
                {{photo.name}}
            </md-button>
        </md-list-item>
    </md-list>

</md-sidenav>

<div flex layout="column" tabIndex="-1" role="main" class="md-whiteframe-z2">

    <md-toolbar>
        <div class="md-toolbar-tools">
            <md-button class="menu" hide-gt-sm ng-click="profileCtrl.toggleList()" aria-label="Show Photo List">
                <md-icon md-font-set="material-icons">menu</md-icon>
            </md-button>
            <h2>
                <span>My Gallery</span>
            </h2>
        </div>
    </md-toolbar>

    <md-content flex layout="column" layout-padding layout-margin>
        <h2>{{profileCtrl.selected.name}}</h2>
        <p>{{profileCtrl.selected.content}}</p>
        <img ng-src="{{profileCtrl.selected.url}}">
        <%--<md-button class="contact" md-no-ink ng-click="profileCtrl.showContactOptions($event)"--%>
        <%--aria-label="Contact User">--%>
        <%--<md-tooltip>Contact {{ profileCtrl.selected.name }}</md-tooltip>--%>
        <%--<md-icon md-svg-icon="share"></md-icon>--%>
        <%--</md-button>--%>
    </md-content>

</div>

<script src="./bower_components/angular/angular.js"></script>
<script src="./bower_components/angular-aria/angular-aria.js"></script>
<script src="./bower_components/angular-animate/angular-animate.js"></script>
<script src="./bower_components/angular-material/angular-material.js"></script>
<script src="./script/main.js"></script>
<script src="./script/PhotoController.js"></script>
<script src="./script/PhotoService.js"></script>
</body>
</html>
