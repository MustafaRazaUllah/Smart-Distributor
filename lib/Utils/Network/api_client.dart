// // ignore_for_file: library_prefixes

// import 'package:flutter/cupertino.dart';
// import 'package:dio/dio.dart' as DIO;
// import 'package:get/get.dart';
// import 'package:showuptomeetup/Modules/Internet/internet_controller.dart';
// import 'package:showuptomeetup/Utils/Network/internet_connectivity.dart';
// import 'package:showuptomeetup/Utils/Network/tost.dart';
// import 'package:showuptomeetup/Utils/Theme/app_config.dart';
// import 'api_urls.dart';
// import 'cache_handler.dart';

// class API {
//   // static var client = http.Client();
//   final _internetController = Get.put(InternetController());
//   Future GetData(String apiurl, {String? completeURL}) async {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     ///todo: API Token
//     var token = await DatabaseHandler().getToken();
//     print("Token ==>> " + token.toString());
//     print("URL ==>> " + ApiManager.BASE_URL + apiurl);
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: Check Internet Connection
//     _internetController.isInternet.value = await InternetConnectivityResult();
//     if (_internetController.isInternet.value == false) {
//       if (!_internetController.isAlreadyOpenAlart.value) {
//         Get.defaultDialog(
//           title: "",
//           barrierDismissible: false,
//           contentPadding: EdgeInsets.only(bottom: 20),
//           content: noInternet(),
//           onWillPop: () async {
//             return false;
//           },
//         );
//       }
//       _internetController.isAlreadyOpenAlart.value = true;
//     } else {
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       if (_internetController.isAlreadyOpenAlart.value) {
//         _internetController.isAlreadyOpenAlart.value = false;
//         Get.back();
//       }

//       //////todo: API Call
//       String url = completeURL ?? ApiManager.BASE_URL + apiurl;
//       try {
//         var dio = DIO.Dio();
//         var response = await dio
//             .get(
//           url,
//           options: DIO.Options(headers: {
//             "Accept": 'application/json',
//             'Content-Type': 'application/json',
//             "Authorization": "Bearer ${token.toString()}",
//           }),
//         )
//             .whenComplete(() {
//           debugPrint("Getting Process is Complete:");
//         }).catchError((onError) {
//           debugPrint("GET Error: ${onError.toString()}");
//         });

//         return response;
//       } catch (e) {
//         print(['POST API exception get', e.toString()]);
//       }
//     }
//   }

//   Future GetPaginationData(String apiurl) async {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     ///todo: API Token
//     var token = await DatabaseHandler().getToken();
//     print("Token ==>> " + token.toString());
//     print("URL ==>> " + apiurl);
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: Check Internet Connection
//     _internetController.isInternet.value = await InternetConnectivityResult();
//     if (_internetController.isInternet.value == false) {
//       if (!_internetController.isAlreadyOpenAlart.value) {
//         Get.defaultDialog(
//           title: "",
//           barrierDismissible: false,
//           contentPadding: EdgeInsets.only(bottom: 20),
//           content: noInternet(),
//           onWillPop: () async {
//             return false;
//           },
//         );
//       }
//       _internetController.isAlreadyOpenAlart.value = true;
//     } else {
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       if (_internetController.isAlreadyOpenAlart.value) {
//         _internetController.isAlreadyOpenAlart.value = false;
//         Get.back();
//       }

//       //////todo: API Call
//       try {
//         var dio = DIO.Dio();
//         var response = await dio
//             .get(
//           apiurl,
//           options: DIO.Options(headers: {
//             "Accept": 'application/json',
//             'Content-Type': 'application/json',
//             "Authorization": "Bearer ${token.toString()}",
//           }),
//         )
//             .whenComplete(() {
//           debugPrint("Getting Process is Complete:");
//         }).catchError((onError) {
//           debugPrint("GET Error: ${onError.toString()}");
//         });

//         return response;
//       } catch (e) {
//         print(['POST API exception get', e.toString()]);
//       }
//     }
//   }

//   Future Delete(String apiurl) async {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     ///todo: API Token
//     var token = await DatabaseHandler().getToken();
//     print("Token ==>> " + token.toString());
//     print("URL ==>> " + ApiManager.BASE_URL + apiurl);
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: Check Internet Connection
//     _internetController.isInternet.value = await InternetConnectivityResult();
//     if (_internetController.isInternet.value == false) {
//       if (!_internetController.isAlreadyOpenAlart.value) {
//         Get.defaultDialog(
//           title: "",
//           barrierDismissible: false,
//           contentPadding: EdgeInsets.only(bottom: 20),
//           content: noInternet(),
//         );
//       }
//       _internetController.isAlreadyOpenAlart.value = true;
//     } else {
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       if (_internetController.isAlreadyOpenAlart.value) {
//         _internetController.isAlreadyOpenAlart.value = false;
//         Get.back();
//       }
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       //////todo: API Call
//       try {
//         var dio = DIO.Dio();
//         var response = await dio
//             .delete(
//           ApiManager.BASE_URL + apiurl,
//           options: DIO.Options(headers: {
//             "Accept": 'application/json',
//             'Content-Type': 'application/json',
//             "Authorization": "Bearer ${token.toString()}",
//           }),
//         )
//             .whenComplete(() {
//           debugPrint("Getting Process is Complete:");
//         }).catchError((onError) {
//           debugPrint("GET Error: ${onError.toString()}");
//         });

//         return response;
//       } catch (e) {
//         print(['POST API exception get', e.toString()]);
//       }
//     }
//   }

//   Future post(String apiurl, var data) async {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     ///todo: API Token
//     var token = await DatabaseHandler().getToken();
//     print("Token ==>> " + token.toString());
//     print("URL ==>> " + ApiManager.BASE_URL + apiurl);
//     print("Data ==>> " + data.toString());

//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: Check Internet Connection
//     _internetController.isInternet.value = await InternetConnectivityResult();
//     if (_internetController.isInternet.value == false) {
//       if (!_internetController.isAlreadyOpenAlart.value) {
//         Get.defaultDialog(
//           title: "",
//           barrierDismissible: false,
//           contentPadding: EdgeInsets.only(bottom: 20),
//           content: noInternet(),
//         );
//       }
//       _internetController.isAlreadyOpenAlart.value = true;
//     } else {
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       if (_internetController.isAlreadyOpenAlart.value) {
//         _internetController.isAlreadyOpenAlart.value = false;
//         Get.back();
//       }
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       //////todo: API Call
//       try {
//         var dio = DIO.Dio();
//         var response = await dio.post(
//           ApiManager.BASE_URL + apiurl,
//           data: data,
//           // data: {},
//           options: DIO.Options(headers: {
//             "Accept": 'application/json',
//             'Content-Type': 'application/json',
//             "Authorization": "Bearer ${token.toString()}",
//           }),
//           onSendProgress: (int sent, int total) {
//             debugPrint(
//                 "total ${total.toString()} " "   sent ${sent.toString()}");
//           },
//         ).whenComplete(() {
//           debugPrint("POST Complete:");
//         }).catchError((onError) {
//           debugPrint("POST Error: ${onError.toString()}");
//         });
//         return response;
//       } catch (e) {
//         print(['POST API exception get', e.toString()]);
//       }
//     }
//   }

//   Future patch(String apiurl, var data) async {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     ///todo: API Token
//     var token = await DatabaseHandler().getToken();
//     print("Token ==1>> " + token.toString());
//     print("URL ==1>> " + ApiManager.BASE_URL + apiurl);
//     print("Data ==1>> " + data.toString());

//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: Check Internet Connection
//     _internetController.isInternet.value = await InternetConnectivityResult();
//     if (_internetController.isInternet.value == false) {
//       if (!_internetController.isAlreadyOpenAlart.value) {
//         Get.defaultDialog(
//           title: "",
//           barrierDismissible: false,
//           contentPadding: EdgeInsets.only(bottom: 20),
//           content: noInternet(),
//         );
//       }
//       _internetController.isAlreadyOpenAlart.value = true;
//     } else {
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       if (_internetController.isAlreadyOpenAlart.value) {
//         _internetController.isAlreadyOpenAlart.value = false;
//         Get.back();
//       }
//       ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//       //////todo: API Call

//       try {
//         var dio = DIO.Dio();

//         var response = await dio.patch(
//           ApiManager.BASE_URL + apiurl,
//           data: data,
//           options: DIO.Options(headers: {
//             "Accept": 'application/json',
//             'Content-Type': 'application/json',
//             "Authorization": "Bearer ${token.toString()}",
//           }),
//           onSendProgress: (int sent, int total) {
//             debugPrint(
//                 "total ${total.toString()} " "   sent ${sent.toString()}");
//           },
//         ).whenComplete(() {
//           debugPrint("POST Complete:");
//         }).catchError((onError) {
//           // Toast().error(massage: "$apiurl\nSomething is wrong");
//           debugPrint(
//               "POST Error: $apiurl\n${onError.toString()}\n**************************>>>>");
//         });
//         return response;
//       } catch (e) {
//         print(['POST API exception get', e.toString()]);
//       }
//     }
//   }

//   SizedBox noInternet() {
//     return SizedBox(
//       width: SizeConfig.screenWidth * 0.8,
//       child: Image.asset(
//         "assets/icons/noInternet.png",
//         height: SizeConfig.screenWidth * 0.4,
//       ),
//     );
//   }

//   // Future profileUpdateMiltiPart(String apiurl, var data, bool isImage) async {
//   //   ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//   //   ///todo: API Token
//   //   var token = await DatabaseHandler().getToken();
//   //   print("Token ==>> " + token.toString());
//   //   print("URL ==>> " + ApiManager.BASE_URL + apiurl);
//   //   // print("Data ==>> " + data["image"].toString());
//   //   FormData formData;
//   //   if (isImage) {
//   //     String fileName = await data["photo"].split('/').last;
//   //     print("fileName $fileName");
//   //     formData = FormData.fromMap({
//   //       "photo":
//   //           await MultipartFile.fromFile(data["photo"], filename: fileName),
//   //       "name": data["name"],
//   //       "bio": data["bio"],
//   //       "phone": data["phone"],
//   //       "country_code": data["country_code"],
//   //       "phone_code": data["phone_code"],
//   //       "date_of_birth": data["dateOfBirth"],
//   //       "country": data["country"],
//   //       "locale": data["language"],
//   //       "_method": "PATCH"
//   //     });
//   //     print("formData " + formData.fields.toString());
//   //   } else {
//   //     formData = FormData.fromMap({
//   //       "name": data["name"],
//   //       "bio": data["bio"],
//   //       "phone": data["phone"],
//   //       "country_code": data["country_code"],
//   //       "phone_code": data["phone_code"],
//   //       "date_of_birth": data["dateOfBirth"],
//   //       "country": data["country"],
//   //       "locale": data["language"],
//   //       "_method": "PATCH"
//   //     });
//   //     print("formData $formData");
//   //     print("formData " + formData.fields.toString());
//   //   }
//   //   ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//   //   //////todo: Check Internet Connection
//   //   // bool internet = await InternetConnectivityResult();
//   //   // print("Internet========>$internet");
//   //   // if (internet == false) {
//   //   //   Toast().error(massage: "No Internet Connection");
//   //   // } else {
//   //   ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//   //   //////todo: API Call
//   //   try {
//   //     var dio = DIO.Dio();
//   //     var response = await dio.post(
//   //       ApiManager.BASE_URL + apiurl,
//   //       data: formData,
//   //       options: DIO.Options(headers: {
//   //         "Accept": 'application/json',
//   //         'Content-Type': 'application/json',
//   //         "Authorization": "Bearer ${token.toString()}",
//   //       }),
//   //       onSendProgress: (int sent, int total) {
//   //         debugPrint("total ${total.toString()} " "   sent ${sent.toString()}");
//   //       },
//   //     ).whenComplete(() {
//   //       debugPrint("POST Complete:");
//   //     }).catchError((onError) {
//   //       Toast().error(massage: "Invalid Data");
//   //       debugPrint("POST Error: ${onError.toString()}");
//   //     });
//   //     return response;
//   //   } catch (e) {
//   //     print(['POST API exception get', e.toString()]);
//   //   }
//   //   // }
//   // }

//   // Future Put(String apiurl, var data) async {
//   //   ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//   //   ///TODO: API Token
//   //   var token = await DatabaseHandler().getToken();
//   //   print("Token ==>> " + token.toString());
//   //   ///TODO: Firebase Token
//   //   var firebaseToken = await DatabaseHandler().getFirebaseToken();
//   //   print("FirebaseToken ==>> " + firebaseToken.toString());
//   //   ///TODO: Firebase Time
//   //   var firebaseTime = await DatabaseHandler().getFirebaseTime();
//   //   if (token == null) {
//   //     if (firebaseTime > DateTime.now().millisecondsSinceEpoch) {
//   //     } else {
//   //       print("firebaseTime");
//   //       print(firebaseTime);
//   //       print(DateTime.now().millisecondsSinceEpoch);
//   //       await DatabaseHandler().setFirebaseTime(DateTime.now()
//   //           .add(new Duration(minutes: 30))
//   //           .millisecondsSinceEpoch);
//   //       firebaseToken =
//   //           await FirebaseAuth.instance.currentUser!.getIdToken(true);
//   //       await DatabaseHandler().setFirebaseToken(firebaseToken);
//   //     }
//   //   }
//   //   print({
//   //     "Accept": "*/*",
//   //     'Content-Type': 'application/json',
//   //     if (firebaseToken != "")
//   //       "Authorization": "Firebase ${firebaseToken.toString()}",
//   //     if (firebaseToken == "") "Authorization": "Bearer ${token.toString()}",
//   //   });
//   //   ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//   //   print(token);
//   //   // bool internet = await InternetConnectivityResult();
//   //   //      print("Internet========>$internet");
//   //   // if (internet == false) {
//   //   //   Toast().error(massage: "No Internet Connection");
//   //   // } else {
//   //   try {
//   //     var dio = DIO.Dio();
//   //     var response = await dio.put(
//   //       ApiManager.BASE_URL + apiurl,
//   //       data: data,
//   //       options: DIO.Options(headers: {
//   //         'Content-type': 'application/json',
//   //         'Accept': 'application/json',
//   //         if (firebaseToken != "")
//   //           "Authorization": "Firebase ${firebaseToken.toString()}",
//   //         if (firebaseToken == "")
//   //           "Authorization": "Bearer ${token.toString()}",
//   //       }),
//   //       onSendProgress: (int sent, int total) {
//   //         debugPrint("total ${total.toString()} " "   sent ${sent.toString()}");
//   //       },
//   //     ).whenComplete(() {
//   //       debugPrint("POST Complete:");
//   //     }).catchError((onError) {
//   //       debugPrint("POST Error: ${onError.toString()}");
//   //     });
//   //     return response;
//   //   } catch (e) {
//   //     print(['POST API exception get', e.toString()]);
//   //   }
//   // }
// }
