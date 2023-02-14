// import 'package:flutter/cupertino.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class LocalNotifications {
//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   init() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('logo');
//     final DarwinInitializationSettings initializationSettingsIOS =
//         DarwinInitializationSettings(
//       requestSoundPermission: false,
//       requestBadgePermission: false,
//       requestAlertPermission: false,
//       onDidReceiveLocalNotification: onDidReceiveLocalNotification,
//     );
//     // final DarwinInitializationSettings initializationSettingsIOS =
//     //     DarwinInitializationSettings(
//     //         onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       // onSelectNotification: selectNotification
//     );
//   }

//   Future selectNotification(String? payload) async {
//     // final tripController = Get.put(TripController());
//     // tripController.insertTripDetails(jsonDecode(payload!));
//     // GetStorageHandler().saveTripCode(jsonDecode(payload)['TripCode']);
//     // Get.to(() => AcceptTripScreen());
//   }
//   Future notification(
//     String title,
//     String message,
//     // String payload,
//   ) async {
//     AndroidNotificationDetails androidNotificationDetails =
//         const AndroidNotificationDetails(
//       'Channel ID',
//       'Channel title',
//       priority: Priority.high,
//       importance: Importance.max,
//       ticker: 'test',
//     );
//     DarwinNotificationDetails iosNotificationDetails =
//         const DarwinNotificationDetails();
//     NotificationDetails notificationDetails = NotificationDetails(
//       iOS: iosNotificationDetails,
//       android: androidNotificationDetails,
//     );
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       message,
//       notificationDetails,
//     );
//   }

//   void onDidReceiveLocalNotification(
//       int id, String? title, String? body, String? payload) {
//     CupertinoAlertDialog(
//       title: Text(title!),
//       content: Text(body!),
//       actions: <Widget>[
//         CupertinoDialogAction(
//             isDefaultAction: true,
//             onPressed: () {
//               print("");
//             },
//             child: const Text("Okay")),
//       ],
//     );
//   }
// }
