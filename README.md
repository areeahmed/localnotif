# localnotif

hello this is a Local Notification repository for android and IOS.

## How to use

### Packages

- Latest version: flutter_Local_notification: <https://pub.dev/packages/flutter_local_notifications>

- Latest version: timezone: <https://pub.dev/packages/timezone>
- Latest version: rxdart: <https://pub.dev/packages/rxdart>

### Adding Some Code

- add this segment of code below to the AndroidManifest.xml ( main )
  - These attributes ensure the screen turns on and shows when the device is locked.

  <activity
    android:showWhenLocked="true"
    android:turnScreenOn="true">

- add this segment of code below to the AppDelegate.swift under

  GeneratedPluginRegistrant.register(with: self)
  if #available(iOS 10.0, *) {
    UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
    }

### Create Icon

- you have to create an icon in here: <https://romannurik.github.io/AndroidAssetStudio/>

- after you downloaded the icon zip file, extract the zip and add the folder that inside [ rec folder ] to this dir: [project_folder]/android/app/src/main/res/

### Service File

- Copy the local_notification_service.dart to your project

### Usage

- in any screens or files that you want to use the methods of local_notification_service.dart you have to add the segment of code below inside a screen class.

  late final LocalNotificationService service;
  @override
  void initState() {
    service = LocalNotificationService();
    service.initialize();
    super.initState();
  }

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
