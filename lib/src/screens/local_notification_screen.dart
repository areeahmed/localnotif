import 'package:flutter/material.dart';
import 'package:localnotif/src/service/local_notification_service.dart';

class LocalNotificationScreen extends StatefulWidget {
  const LocalNotificationScreen({Key? key}) : super(key: key);

  @override
  State<LocalNotificationScreen> createState() =>
      _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {
  late final LocalNotificationService service;

  @override
  void initState() {
    service = LocalNotificationService();
    service.initialize();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () async {
                  //TODO show simple clickable local notification
                  await service.showNotification(
                    id: 0,
                    title: 'Local Notification Says: ',
                    body: 'Hello this is Simple Local Notification',
                  );
                },
                child: Text('Press'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () async {
                  //TODO show the scheduled local notification
                  await service.showScheduledNotification(
                    id: 0,
                    title: 'Local Notification Says: ',
                    body:
                        'Hello this is Scheduled Local Notification for 2 Second',
                    seconds: 2,
                  );
                },
                child: Text('Press'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () async {
                  //TODO show the notification with payload
                },
                child: Text('Press'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
