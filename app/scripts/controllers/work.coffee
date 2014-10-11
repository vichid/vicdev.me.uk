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

    $scope.places = [
        {name:'Choose a Company', value:''}
        {name:'Personal Projects', value:'pp'}
        {name:'Bright Sites Consulting', value:'bsc'}
        {name:'Campus UPC', value:'campus'}
    ]
    $scope.place = $scope.places[0]
    $scope.category = $scope.categories[0]
    $scope.projects = [
        {
            name:'My Urban Garden',
            categories:'<ul class="tags"><li class="tag">android</li></ul>',
            description:'My Urban Garden is an android APP focused on inform people about plants:How and When to plant; Benefits consuming them;When to recollect them;Pests and diseases they can suffer. This APP is only in Spanish due to the huge amount of work that is to maintain it. It\'s still in development.',
            people:'1',
            project_year:2014,
            img:'images/work/my-urban-garden.png',
            url:'https://play.google.com/store/apps/details?id=uk.me.vicdev.myurbangarden',
            platform:'mobile',
            place:'pp'
        }
        {
            name:'What\'s hot',
            categories:'<ul class="tags"><li class="tag">android</li><li class="tag">hybrid</li><li class="tag">ionic</li><li class="tag">angularjs</li></ul>',
            description:'What\'s hot is an hybrid APP that shows the trending topics by the region you select. It\'s still in development.',
            people:'1',
            project_year:2014,
            img:'images/work/wgot.png',
            url:'https://play.google.com/store/apps/details?id=uk.me.vicdev.wgot',
            platform:'mobile',
            place:'pp'
        }
        {
            name:'Going Out',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'Going Out, an Evening Standard project, is aimed to let Evening Standard readers know about the actuality of events, attractions, pubs, etc. We were on charge of implementing the whole site.',
            people:'2',
            project_year:2014,
            img:'images/work/go.png',
            url:'http://www.standard.co.uk/goingout/',
            platform:'laptop',
            place:'bsc'
        }
        {
            name:'Homes & Property',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'Homes & Property is website that allows users to search for their new home. I was in charge of the maintenance and evolutionary.',
            people:'3',
            project_year:2014,
            img:'images/work/hp.png',
            url:'http://www.homesandproperty.co.uk/',
            platform:'laptop',
            place:'bsc'
        }
        {
            name:'Selene',
            categories:'<ul class="tags"><li class="tag">ghost</li></ul>',
            description:'Selene is a minimal open source ghost theme with a timeline style and infinite scrolling.',
            people:'1',
            project_year:2014,
            img:'images/work/selene.png',
            url:'hhttp://selene.vicdev.me.uk/',
            platform:'laptop',
            place:'pp'
        }
        {
            name:'MyHomeFiles',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'MyHomeFiles is a new site, designed by Classic Folios. The purpose of the site is to provide information for new homeowners, putting all information about a home in one place. The site is available for use by home development companies, who wish to communicate with the owners of their houses on a development-by-development basis. I was the main developer in charge of implement the new versions of the site.',
            people:'3',
            project_year:2014,
            img:'images/work/mhf.jpg',
            url:'http://www.myhomefiles.co.uk/',
            platform:'laptop',
            place:'bsc'
        }
        {
            name:'Personal Webpage',
            categories:'<ul class="tags"><li class="tag">angularjs</li><li class="tag">responsive-design</li></ul>',
            description:'This is my personal website where I\'ve been trying to keep a track of all the projects where I\'ve been working. This project has been completely developed with new technologies such as angularjs.',
            people:'1',
            project_year:2014,
            img:'images/work/portfolio.jpg',
            url:'http://vicdev.me.uk/',
            platform:'laptop',
            place:'pp'
        }
        {
            name:'Business Conections',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'Business Connections, an Evening Standard project, is aimed at business professionals and contains details of exclusive events, articles and members-only content. BC allows booking of upcoming events by a certain price per annum. My task as a secondary developer in this project was: helping with the maintenance of the site and continue with the evolutionary.',
            people:'3',
            project_year:2014,
            img:'images/work/bc.jpg',
            url:'http://www.standard.co.uk/businessconnections',
            platform:'laptop',
            place:'bsc'
        }
        {
            name:'Sound Tools',
            categories:'<ul class="tags"><li class="tag">android</li><li class="tag">sound-processing</li></ul>',
            description:'Sound Tools is an Android App developed as a hobby that offers a metronome, a recorder and a guitar tuner.',
            people:'1',
            project_year:2013,
            img:'images/work/sound-tools.png',
            url:'https://play.google.com/store/apps/details?id=com.soundtools',
            platform:'mobile',
            place:'pp'
        }
        {
            name:'Media Terrassa',
            categories:'<ul class="tags"><li class="tag">drupal</li><li class="tag">responsive-design</li></ul>',
            description:'Media Terrassa is a repository of videos that was developed with the team of developers from the IT department of Terrassa Campus from the University of Catalonia.',
            people:'2',
            project_year:2012,
            img:'images/work/media-terrassa.png',
            url:'https://media.terrassa.upc.edu/',
            platform:'laptop',
            place:'campus'
        }
        {
            name:'Netcuv',
            categories:'<ul class="tags"><li class="tag">drupal</li></ul>',
            description:'Netcuv is a web application designed to be an online Community for Opticians and Optometrists on which they can discuss and share knowledge. Developed with the IT department of Terrassa Campus from the University of Catalonia.',
            people:'2',
            project_year:2012,
            img:'images/work/netcuv.png',
            url:'https://netcuv.upc.edu/ca/frontpage',
            platform:'laptop',
            place:'campus'
        }
        {
            name:'Legionella2013',
            categories:'<ul class="tags"><li class="tag">drupal</li></ul>',
            description:'Legionella2013 was one of my first comercial websites. The purpose of this project was to announce a legionella congress that would take place in Terrassa, Catalonia.',
            people:'1',
            project_year:2012,
            img:'images/work/legionella.jpg',
            url:'http://legionella2013.upc.edu/',
            platform:'laptop',
            place:'campus'
        }

    ]
  .directive 'hex', ->
    restrict: 'C'
    template: '<div class="hex-item"><div class="hex-item-inner"><div class="hex-item-inner-2"></div></div></div>'
  .filter "slug", ->
    (input) ->
      input.toLowerCase().replace /[^a-z0-9_]/g, "_"  if input