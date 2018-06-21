#!/bin/bash
buildp="/system/build.prop"

mount -o rw,remount /data
mount -o rw,remount /system
mount -o rw,remount /oem

# Reset apps

rm -rf /system/app/com.sonymobile.themes.xperialoops
rm -rf /system/priv-app/com.sonymobile.themes.xperialoops
rm -rf /data/user/0/com.sonymobile.themes.xperialoops

rm -rf /system/app/com.sonymobile.xperiaxlivewallpaper
rm -rf /system/priv-app/com.sonymobile.xperiaxlivewallpaper
rm -rf /data/user/0/com.sonymobile.xperiaxlivewallpaper

rm -rf /system/priv-app/com.google.android.apps.messaging
rm -rf /data/user/0/com.google.android.apps.messaging

rm -rf /system/priv-app/com.google.android.calculator
rm -rf /data/user/0/com.google.android.calculator

rm -rf /system/priv-app/com.google.android.contacts
rm -rf /data/user/0/com.google.android.contacts

rm -rf /system/priv-app/3D-Creator-Sony
rm -rf /system/app/3D-Creator-Sony
rm -rf /data/user/0/3D-Creator-Sony

#Sony Messages
rm -rf /system/priv-app/Conversations
rm -rf /data/user/0/Conversations
rm -rf /system/app/Messages
rm -rf /data/user/0/Messages

#Sony Home
#rm -rf /system/priv-app/home-sonyMobile-release
#rm -rf /system/priv-app/home-sonyEricsson-release
#rm -rf /data/user/0/home-sonyMobile-release
#rm -rf /data/user/0/home-sonyEricsson-release

#Sony Dialer
rm -rf /system/priv-app/Dialer
rm -rf /system/priv-app/Dialer2
rm -rf /data/user/0/Dialer
rm -rf /data/user/0/Dialer2

#Sony Contacts
rm -rf /system/priv-app/Contacts
rm -rf /data/user/0/Contacts

#Sony Weather
rm -rf /system/app/weather-release 
rm -rf /data/user/0/weather-release

#Email
rm -rf /system/priv-app/SemcEmail
rm -rf /data/user/0/SemcEmail

#Calculator
rm -rf /system/app/ExactCalculator
rm -rf /data/user/0/ExactCalculator

# Google bloat
rm -rf /system/priv-app/GoogleDialer

rm -rf /system/app/Gmail2
rm -rf /data/user/0/com.google.android.gm

rm -rf /system/app/Hangouts
rm -rf /data/user/0/Hangouts

rm -rf /system/app/EditorsDocs
rm -rf /data/user/0/EditorsDocs

rm -rf /system/app/EditorsSheets
rm -rf /data/user/0/EditorsSheets

rm -rf /system/app/EditorsSlides
rm -rf /data/user/0/com.google.android.apps.docs.editors.slides

rm -rf /system/app/Music2
rm -rf /data/user/0/Music2

#Useless
rm -rf /system/priv-app/ActiveClipper
rm -rf /data/user/0/ActiveClipper

rm -rf /system/priv-app/retaildemo
rm -rf /data/user/0/retaildemo

rm -rf /system/priv-app/UpdateCenter-release
rm -rf /data/user/0/UpdateCenter-release

rm -rf /system/priv-app/MyXperia-release
rm -rf /data/user/0/MyXperia-release

rm -rf /system/app/newssuite
rm -rf /data/user/0/newssuite

rm -rf /system/priv-app/SomcPodcast
rm -rf /data/user/0/SomcPodcast

rm -rf /system/app/com.spotify.music
rm -rf /data/user/0/com.spotify.music

# Phone monitoring anad data sending stuff
rm -rf /system/app/device-monitor
rm -rf /data/user/0/device-monitor

rm -rf /system/app/GooglePrintRecommendationService
rm -rf /data/user/0/GooglePrintRecommendationService

rm -rf /system/app/GoogleAnalyticsProxy
rm -rf /data/user/0/GoogleAnalyticsProxy

rm -rf /system/app/phonel-usage
rm -rf /data/user/0/phone1-usage

rm -rf /system/app/phone-usage
rm -rf /data/user/0/phone-usage

rm -rf /system/app/HTMLViewer
rm -rf /data/user/0/HTMLViewer

rm -rf /system/app/playstationapp
rm -rf /data/user/0/playstationapp

rm -rf /system/app/RcaHandler
rm -rf /data/user/0/RcaHandler

rm -rf /system/app/IddPermissionApplicationCertificate/
rm -rf /data/user/0/IddPermissionApplicationCertificate/

#AR Effect
rm -rf /data/app/com.sonymobile.androidapp.cameraaddon.areffect*
rm -rf /system/app/ar-effect
rm -rf /data/user/0/com.sonymobile.androidapp.cameraaddon.areffect

#AVG Protection
rm -rf /system/app/com.s.antivirus
rm -rf /data/user/0/com.s.antivirus

#Advanced Logging
rm -rf /system/app/AdvancedLogging
rm -rf /data/user/0/com.sonymobile.advancedlogging

#Album
#rm -rf /system/priv-app/album-albumLive-release
#rm -rf /data/user/0/com.sonyericsson.album

#Sony Video
#rm -rf /system/app/videoplaceholder
#rm -rf /data/user/0/com.sony.tvsideview.videoph

#Sony Video & TV SideView
rm -rf /system/app/videotvsideview
rm -rf /data/user/0/com.sony.tvsideview.phone

#Amazon Shopping
rm -rf /system/app/com.amazon.mShop.android.shopping
rm -rf /data/user/0/com.amazon.mShop.android.shopping

#Anonymous Usage Stats
rm -rf /system/app/IddAgent
rm -rf /data/user/0/com.sonyericsson.idd.agent

#Black theme
#rm -rf /system/app/Theme-Sou-M-cid18-black-sw360dp-xxhdpi-release
#rm -rf /data/user/0/com.sonymobile.themes.sou.cid18.black

#Blue theme
#rm -rf /system/app/Theme-Sou-M-cid20-blue-sw360dp-xxhdpi-release
#rm -rf /data/user/0/com.sonymobile.themes.sou.cid20.blue

#Bookmark Provider
rm -rf /system/app/BookmarkProvider
rm -rf /data/user/0/com.android.bookmarkprovider

#Calendar
rm -rf /system/app/CalendarGoogle
rm -rf /data/user/0/com.google.android.calendar

#Chrome
rm -rf /system/app/Chrome
rm -rf /data/user/0/com.android.chrome

#Clock
#rm -rf /system/priv-app/SemcClock
#rm -rf /data/user_de/0/com.sonyericsson.organizer

#Clock widgets
#rm -rf /system/priv-app/ClockWidgets-release
#rm -rf /data/user/0/com.sonymobile.advancedwidget.clock

#Creative effect
rm -rf /system/priv-app/ArtFilterCamera-xxhdpi-release
rm -rf /data/user/0/com.sonyericsson.android.addoncamera.artfilter

#Google Docs
rm -rf /system/app/EditorsDocs
rm -rf /data/user/0/com.google.android.apps.docs.editors.docs

#Google Drive
rm -rf /system/app/Drive
rm -rf /data/user/0/com.google.android.apps.docs

#Duo
rm -rf /system/app/Duo
rm -rf /data/user/0/com.google.android.apps.tachyon

#Sony Email
rm -rf /system/app/SemcEmail-release
rm -rf /data/user/0/com.sonymobile.email

#Sony Exchange Services
rm -rf /system/app/Exchange-release
rm -rf /data/user/0/com.sonymobile.exchange

#Facebook
rm -rf /system/app/com.facebook.katana
rm -rf /data/user/0/com.facebook.katana

#Facebook App Installer
rm -rf /system/app/com.facebook.system
rm -rf /system/priv-app/com.facebook.system
rm -rf /data/user/0/com.facebook.system

#Facebook App Manager
rm -rf /system/app/com.facebook.appmanager
rm -rf /data/user/0/com.facebook.appmanager

#Facebook Services
rm -rf /system/priv-app/com.facebook.services
rm -rf /data/user/0/com.facebook.services
rm -rf /data/app/com.facebook*
rm -rf /data/user/0/com.facebook*

#Gmail
rm -rf /system/app/Gmail2
rm -rf /data/user/0/com.google.android.gm

#Google Now
#rm -rf /system/priv-app/Velvet
#rm -rf /data/user/0/com.google.android.googlequicksearchbox

#Google Play Movies & TV
rm -rf /system/app/Videos
rm -rf /data/user/0/com.google.android.videos

#Google Play Music
rm -rf /system/app/Music2
rm -rf /data/user/0/com.google.android.music

#Google Text-to-speech Engine
#rm -rf /system/app/GoogleTTS
#rm -rf /data/user/0/com.google.android.tts

#Google lyrics extension for Sony Music app
rm -rf /system/app/GoogleLyricsPlugin
rm -rf /data/user/0/com.sonymobile.music.googlelyricsplugin

#Intelligent Observer
#rm -rf /system/app/IntelligentObserver
#rm -rf /data/user/0/com.sonymobile.intelligent.observer

#International keyboard layouts
#rm -rf /system/app/externalkeyboardsinternational-release
#rm -rf /data/user/0/com.sonymobile.android.externalkeyboard

#Introduction to Xperia
rm -rf /system/priv-app/somc-get-to-know-it-release
rm -rf /data/user/0/com.sonymobile.gettoknowit

#Japanese keyboard layout
#rm -rf /system/app/ExternalKeyboardJP
#rm -rf /data/user/0/com.sonymobile.android.externalkeyboardjp

#Lifelog
rm -rf /system/app/Lifelog-googlePlayLiveRelease-4.0.A.0.14-8388622
rm -rf /system/app/Lifelog-googlePlayLiveRelease*
rm -rf /data/user/0/com.sonymobile.lifelog

#Xperia Lounge
rm -rf /system/app/com.sonyericsson.xhs
rm -rf /data/user/0/com.sonyericsson.xhs

#Sony Movie Creator
#rm -rf /system/app/SomcMovieCreatorRmm-release
#rm -rf /data/user/0/com.sonymobile.moviecreator.rmm

#Sony News Suite
rm -rf /system/app/newssuite
rm -rf /data/user/0/com.sony.nfx.app.sfrc

#OK Google Enrollment
#rm -rf /system/priv-app/HotwordEnrollmentOKGoogleWCD9340
#rm -rf /data/user/0/com.android.hotwordenrollment.okgoogle

#Google Photos
rm -rf /system/app/Photos
rm -rf /data/user/0/com.google.android.apps.photos

#Amazon Prime Video
rm -rf /system/app/com.amazon.avod.thirdpartyclient
rm -rf /oem/app/com.amazon.avod.thirdpartyclient
rm -rf /data/user/0/com.amazon.avod.thirdpartyclient

#Sony Retail Demo
rm -rf /system/priv-app/com.sonymobile.retaildemo
rm -rf /data/user/0/com.sonymobile.retaildemo

#Google Sheets
rm -rf /system/app/EditorsSheets
rm -rf /data/user/0/com.google.android.apps.docs.editors.sheets

#Sony Sketch
#rm -rf /system/app/SomcSketch-live
#rm -rf /data/user/0/com.sonymobile.sketch

#Sony Sound Photo
rm -rf /system/priv-app/SoundPhotoCamera-xxhdpi-release
rm -rf /data/user/0/com.sonymobile.android.addoncamera.soundphoto

#Spotify
rm -rf /system/app/com.spotify.music
rm -rf /data/user/0/com.spotify.music

#Sony What's New
rm -rf /system/priv-app/sonyentrance2-release
rm -rf /data/app/com.sonymobile.entrance*
rm -rf /data/user/0/com.sonymobile.entrance

#Sony Wikipedia extension for Sony Music app
rm -rf /system/app/WikipediaPlugin
rm -rf /data/user/0/com.sonymobile.music.wikipediaplugin

#Xperia Chinese keyboard
rm -rf /system/priv-app/textinput-chn-xxhdpi-release
rm -rf /data/user/0/com.sonyericsson.textinput.chinese

#Xperia Japanese keyboard
rm -rf /system/app/SomcPOBox
rm -rf /data/user/0/com.sonymobile.pobox

#Xperia Lounge Pass
rm -rf /system/app/com.sonymobile.xperialounge.services
rm -rf /data/user/0/com.sonymobile.xperialounde.services

#Xperia Tips
rm -rf /system/app/legacy_tips1-release
rm -rf /data/user/0/com.sonymobile.getmore.client

#Xperia Transfer Mobile
#rm -rf /system/app/XperiaTransferMobile-release
#rm -rf /data/user/0/com.sonymobile.xperiatransfermobile

#Xperia services
rm -rf /system/app/SomcXperiaServices
rm -rf /data/user/0/com.sonymobile.xperiaservices

#YouTube
rm -rf /system/app/YouTube
rm -rf /system/app/com.google.android.youtube*
rm -rf /data/user/0/YouTube
rm -rf /data/user/0/com.google.android.youtube

#YouTube plugin for Sony Music app
rm -rf /system/app/YouTubePlugin
rm -rf /data/user/0/com.sonymobile.music.youtubeplugin

#YouTube Karaoke plugin for Sony Music app
rm -rf /system/app/YouTubeKaraokePlugin
rm -rf /data/user/0/com.sonymobile.music.youtubekaraokeplugin

#Sony Chrome homepage customizations
rm -rf /system/vendor/app/ChromeCustomizations
rm -rf /data/user/0/com.android.partnerbrowsercustomizations.chromeHomepage

#Partner Bookmark Provider
rm -rf /system/app/PartnerBookmarksProvider
rm -rf /data/user/0/com.android.providers.partnerbookmarks

#Crash Monitor
rm -rf /system/app/CrashMonitor
rm -rf /data/user/0/com.sonyericsson.crashmonitor

#Anonymous Data
rm -rf /system/app/AnonymousData
rm -rf /data/user/0/com.sonymobile.anondata

#Crash Monitor system
rm -rf /system/app/CrashMonitorSystem
rm -rf /data/user/0/com.sonymobile.crashmonitor.system

#Sony Demo App Checker
rm -rf /system/app/DemoAppChecker
rm -rf /data/user/0/com.sonymobile.demoappchecker

#Sony Wearable Camera Bridge
rm -rf /system/priv-app/CameraWearableBridgeHandheldServer
rm -rf /data/user/0/com.sonymobile.cameracommon.wearablebridge

#Swiftkey extras
rm -rf /oem/com.touchtype
rm -rf /data/data/com.touchtype.swiftkey/cache/*

#Amazon config files
rm -rf /system/etc/amazon-kindle.properties
rm -rf /system/etc/amzn.aiv.properties
rm -rf /system/etc/amzn.apps.ref
rm -rf /system/etc/amzn.mp3.properties
rm -rf /system/etc/amzn.mshop.properties
rm -rf /system/etc/amzn.mshop.windowshop.properties
rm -rf /oem/etc/amazon-kindle.properties
rm -rf /oem/etc/amzn.aiv.properties
rm -rf /oem/etc/amzn.mshop.properties
rm -rf /oem/etc/spotify.preload

if [ -f /system/build.prop.debloat ]; 

  then

  cp $buildp.debloat $buildp

  rm -rf $buildp.debloat

fi

if [ -f /system/build.prop.bak ]; 

  then
  
    rm -rf $buildp
	
    cp $buildp.bak $buildp
	
  else
  
    cp $buildp $buildp.bak
fi

chmod 0644 $buildp

sync

exit 0