angular.module('app').config ($stateProvider, $urlRouterProvider, $locationProvider) ->

  $locationProvider.html5Mode({enabled: true, requireBase: false})
  $urlRouterProvider.otherwise("/video");

  $stateProvider.state 'main',
    url: ''
    abstract: false,
    views:
      layout: {templateUrl: '/assets/views/main.html', controller: 'MainCtrl'}

  $stateProvider.state 'main.video',
    url: '/video'
    abstract: false,
    views:
      main: {templateUrl: '/assets/views/video.html', controller: 'VideoCtrl'}

  #
  # $stateProvider.state 'vod.mainstat',
  #   url: '/mainstat'
  #   abstract: false,
  #   views:
  #     layout: {templateUrl: '/assets/views/main_stat_layout.html', controller: 'StatCtrl'}
  #
  #
  # $stateProvider.state 'vod.users',
  #   url: '/accounts'
  #   abstract: false,
  #   views:
  #     main: {templateUrl: '/assets/views/users.html', controller: 'Users_Ctrl'}
  #
  #
  # $stateProvider.state 'vod.setting',
  #   url: '/setting'
  #   abstract: true,
  #   views:
  #     main: {templateUrl: '/assets/views/main_setting_layout.html', controller: 'SettingCtrl'}
  #
  #
  # $stateProvider.state 'vod.setting.meta',
  #   url: '/meta'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/meta_edit.html', controller: 'MetaCtrl'}
  #
  # $stateProvider.state 'vod.setting.account',
  #   url: '/account'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/account_edit.html', controller: 'AccountCtrl'}
  #
  # $stateProvider.state 'vod.setting.playtemplates',
  #   url: '/playertemplates'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/player_templates.html', controller: 'PlayerTempCtrl'}
  #
  #
  # $stateProvider.state 'vod.setting.addmeth',
  #   url: '/new_metadata?method&id'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/add_metadata.html', controller: 'AddmethCtrl'}
  #
  # $stateProvider.state 'vod.setting.addplayer',
  #   url: '/new_player?method&id'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/add_player_template.html', controller: 'NewPlayerCtrl'}
  #
  #
  # $stateProvider.state 'vod.setting.access_site_list',
  #   url: '/site_access'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/access_site_list.html', controller: 'SiteAccessCtrl'}
  #
  #
  # $stateProvider.state 'vod.setting.access_site_edit',
  #   url: '/site_access_edit?method&id'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/access_site_edit.html', controller: 'SiteAccessEditCtrl'}
  #
  #
  # $stateProvider.state 'vod.setting.country_access',
  #   url: '/country_access'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/country_access.html', controller: 'CountryAccessCtrl'}
  #
  # $stateProvider.state 'vod.setting.country_edit',
  #   url: '/country_edit?method&id'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/edit_country_access.html', controller: 'CountryEditCtrl'}
  #
  # $stateProvider.state 'vod.setting.adslist',
  #   url: '/adslist?method'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/ads_list.html', controller: 'AdsListCtrl'}
  #
  #
  # $stateProvider.state 'vod.setting.adv',
  #   url: '/adv?method&id'
  #   abstract: false,
  #   views:
  #     settingpage: {templateUrl: '/assets/views/setting-tabs/new_adv.html', controller: 'NewAdvCtrl'}
  #
  #
  # $stateProvider.state 'vod.video',
  #   url: ''
  #   abstract: true,
  #   views:
  #     main: {templateUrl: '/assets/views/video.html', controller: 'VideoCtrl'}
  #
  #
  # $stateProvider.state 'vod.video.upload',
  #   url: '/upload'
  #   abstract: false
  #   views:
  #     video: {templateUrl: '/assets/views/file_upload.html', controller: 'Upload_Ctrl'}
  #
  #
  # $stateProvider.state 'vod.video.filters',
  #   url: '/filters?method&id'
  #   views:
  #     video: {templateUrl: '/assets/views/filter_create.html', controller: 'Filter_Ctrl'}
  #
  # $stateProvider.state 'vod.video.getlist',
  #   url: '/filters/:id'
  #   views:
  #     video: {templateUrl: '/assets/views/video_by_filter.html', controller: 'FilterlistCtrl'}
  #
  # $stateProvider.state 'vod.video.getlist_by_album',
  #   url: '/albums/:album_id?name'
  #   views:
  #     video: {templateUrl: '/assets/views/video_by_filter.html', controller: 'FilterlistCtrl'}
  #
  #
  # $stateProvider.state 'vod.video.records',
  #   url: '/records',
  #   views:
  #     video: {templateUrl: '/assets/views/records.html', controller: 'RecordsCtrl'}
  #
  # $stateProvider.state 'vod.video.record',
  #   url: '/records/:id',
  #   abstract: true,
  #   views:
  #     video: {templateUrl: '/assets/views/record.html', controller: 'RecordCtrl'}
  #
  # $stateProvider.state 'vod.video.record.attr',
  #   url: '/attributes',
  #   views:
  #     tabs: {templateUrl: '/assets/views/tabs/attr.html', controller: 'RecordAttrCtrl'}
  #
  # $stateProvider.state 'vod.video.record.access',
  #   url: '/access',
  #   views:
  #     tabs: {templateUrl: '/assets/views/tabs/access.html', controller: 'RecordAccessCtrl'}
  #
  # $stateProvider.state 'vod.video.record.export',
  #   url: '/export',
  #   views:
  #     tabs: {templateUrl: '/assets/views/tabs/export.html', controller: 'RecordExportCtrl'}
  #
  # $stateProvider.state 'vod.video.record.stat',
  #   url: '/stat',
  #   views:
  #     tabs: {templateUrl: '/assets/views/tabs/stat.html', controller: 'RecordStatCtrl'}
  #
  # $stateProvider.state 'vod.video.record.adv',
  #   url: '/adv',
  #   views:
  #     tabs: {templateUrl: '/assets/views/tabs/adv.html', controller: 'RecordAdvCtrl'}
  #
  # $stateProvider.state 'vod.video.record.source',
  #   url: '/newfile',
  #   views:
  #     tabs: {templateUrl: '/assets/views/tabs/source.html', controller: 'RecordSourceCtrl'}
  #
  #
  # $stateProvider.state 'vod.general_stat',
  #   url: '/stat'
  #   views:
  #     main: {templateUrl: '/assets/views/main_stat.html', controller: 'StatCtrl'}
  #
  #
  #
  # console.log("Routes initiated")
