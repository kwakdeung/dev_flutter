// ch01_02_follow_the_package_usage_procedure
// 패키지 사용 절차 따라해보기

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _showToast();
            },
            child: const Text('btn'),
          ),
          ElevatedButton(
            onPressed: () async {
              final notification = FlutterLocalNotificationsPlugin();
              const android = AndroidNotificationDetails(
                '0',
                '알림 테스트',
                channelDescription: '알림 테스트 바디 부분',
                importance: Importance.max,
                priority: Priority.max,
              );
              const ios = DarwinNotificationDetails();
              const detail = NotificationDetails(
                android: android,
                iOS: ios,
              );
              final permission = Platform.isAndroid
                  ? true
                  : await notification
                          .resolvePlatformSpecificImplementation<
                              IOSFlutterLocalNotificationsPlugin>()
                          ?.requestPermissions(
                              alert: true, badge: true, sound: true) ??
                      false;
              if (!permission) {
                print(permission);
              }
              // await flutterLocalNotificationsPlugin.show(
              //   0,
              //   'plain title',
              //   'plain body',
              //   detail,
              // );

              // 타임존 셋팅 필요
              final now = tz.TZDateTime.now(tz.local);
              var notiDay = now.day;

              await notification.zonedSchedule(
                1,
                'alarmTitle',
                'alarmDescription',
                tz.TZDateTime(
                  tz.local,
                  now.year,
                  now.month,
                  now.day,
                  now.hour,
                  now.minute + 1,
                ),
                detail,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation:
                    UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time,
              );
            },
            child: const Text('add alarm'),
          ),
          const Center(child: Text('hi')),
        ],
      ),
    );
  }

  void _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.check),
          SizedBox(width: 12.0),
          Text('This is a Custom Toast'),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 16.0,
            left: 16.0,
            child: child,
          );
        });
  }
}
