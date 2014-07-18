'use strict'

angular.module('portfolioApp')
  .controller 'WorkCtrl', ($scope) ->
    $scope.categories = [
        {name:'Choose a category', value:''}
        {name:'android', value:'android'}
        {name:'drupal', value:'drupal'}
        {name:'angularjs', value:'angularjs'}
        {name:'ghost', value:'ghost'}
    ]
    $scope.years = [
        {name:'Choose a year', value:''}
        {name:'2012', value:2012}
        {name:'2013', value:2013}
        {name:'2014', value:2014}
    ]
    $scope.year = $scope.years[0]
    $scope.category = $scope.categories[0]
    $scope.projects = [
        {
            name:'Selene',
            categories:'<ul class="tags"><li class="tag">ghost</li></ul>',
            description:'Selene is a minimal open source ghost theme with a timeline style and infinite scrolling.',
            people:'1',
            project_year:2014,
            img:'images/work/selene.png',
            url:'hhttp://selene.vicdev.me.uk/',
            platform:'laptop'
        }
        {
            name:'MyHomeFiles',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'MyHomeFiles is a new site, designed by Classic Folios. The purpose of the site is to provide information for new homeowners, putting all information about a home in one place. The site is available for use by home development companies, who wish to communicate with the owners of their houses on a development-by-development basis.',
            people:'3',
            project_year:2014,
            img:'images/work/mhf.jpg',
            url:'http://www.myhomefiles.co.uk/',
            platform:'laptop'
        }
        {
            name:'Personal Webpage',
            categories:'<ul class="tags"><li class="tag">angularjs</li><li class="tag">responsive-design</li></ul>',
            description:'This is my personal website where I\'ve been trying to keep a track of all the projects where I\'ve been working. This project has been completely developed with new technologies such as angularjs.',
            people:'1',
            project_year:2014,
            img:'images/work/portfolio.jpg',
            url:'http://vicdev.me.uk/',
            platform:'laptop'
        }
        {
            name:'Business Conections',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'Business Connections is a part of the Evening Standard brand, it is aimed at business professionals and contains details of exclusive events, articles and members-only content.',
            people:'3',
            project_year:2014,
            img:'images/work/bc.jpg',
            url:'http://www.standard.co.uk/businessconnections',
            platform:'laptop'
        }
        {
            name:'Sound Tools',
            categories:'<ul class="tags"><li class="tag">android</li><li class="tag">sound-processing</li></ul>',
            description:'Sound Tools is an Android App developed as a hobby that offers a metronome, a recorder and a guitar tuner.',
            people:'1',
            project_year:2013,
            img:'images/work/sound-tools.png',
            url:'https://play.google.com/store/apps/details?id=com.soundtools',
            platform:'mobile'
        }
        {
            name:'Media Terrassa',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'Media Terrassa is a repository of videos that was developed with the team of developers from the IT department of Terrassa Campus from the University of Catalonia.',
            people:'2',
            project_year:2012,
            img:'images/work/media-terrassa.png',
            url:'https://media.terrassa.upc.edu/',
            platform:'laptop'
        }
        {
            name:'Netcuv',
            categories:'<ul class="tags"><li class="tag">drupal</li></ul>',
            description:'Netcuv is a web application designed to be an online Community for Opticians and Optometrists on which they can discuss and share knowledge. Developed with the IT department of Terrassa Campus from the University of Catalonia.',
            people:'2',
            project_year:2012,
            img:'images/work/netcuv.png',
            url:'https://netcuv.upc.edu/ca/frontpage',
            platform:'laptop'
        }
        {
            name:'Legionella2013',
            categories:'<ul class="tags"><li class="tag">drupal</li></ul>',
            description:'Legionella2013 was one of my first comercial websites. The purpose of this project was to announce a legionella congress that would take place in Terrassa, Catalonia.',
            people:'1',
            project_year:2012,
            img:'images/work/legionella.jpg',
            url:'http://legionella2013.upc.edu/',
            platform:'laptop'
        }

    ]
  .directive 'hex', ->
    restrict: 'C'
    template: '<div class="hex-item"><div class="hex-item-inner"><div class="hex-item-inner-2"></div></div></div>'
  .filter "slug", ->
    (input) ->
      input.toLowerCase().replace /[^a-z0-9_]/g, "_"  if input