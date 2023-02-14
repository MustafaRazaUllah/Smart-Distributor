// // ignore_for_file: library_prefixes

// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:dio/dio.dart' as DIO;
// import 'package:showuptomeetup/Utils/Network/tost.dart';
// import 'api_urls.dart';
// import 'cache_handler.dart';

// class MultiPartAPI {
//   Future profileUpdateMiltiPart(String apiurl, var data, bool isImage) async {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     ///todo: API Token
//     var token = await DatabaseHandler().getToken();
//     print("Token ==>> " + token.toString());
//     print("URL ==>> " + ApiManager.BASE_URL + apiurl);
//     // print("Data ==>> " + data["image"].toString());
//     FormData formData;
//     if (isImage) {
//       String fileName = await data["photo"].split('/').last;
//       print("fileName $fileName");
//       formData = FormData.fromMap({
//         "photo":
//             await MultipartFile.fromFile(data["photo"], filename: fileName),
//         "name": data["name"],
//         "bio": data["bio"],
//         "phone": data["phone"],
//         "country_code": data["country_code"],
//         "phone_code": data["phone_code"],
//         "date_of_birth": data["dateOfBirth"],
//         "country": data["country"],
//         "locale": data["language"],
//         "_method": "PATCH"
//       });
//       print("formData " + formData.fields.toString());
//     } else {
//       formData = FormData.fromMap({
//         "name": data["name"],
//         "bio": data["bio"],
//         "phone": data["phone"],
//         "country_code": data["country_code"],
//         "phone_code": data["phone_code"],
//         "date_of_birth": data["dateOfBirth"],
//         "country": data["country"],
//         "locale": data["language"],
//         "_method": "PATCH"
//       });
//       print("formData $formData");
//       print("formData " + formData.fields.toString());
//     }

//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: Check Internet Connection
//     // bool internet = await InternetConnectivityResult();
//     // print("Internet========>$internet");
//     // if (internet == false) {
//     //   Toast().error(massage: "No Internet Connection");
//     // } else {
//     ////°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°/////
//     //////todo: API Call
//     try {
//       var dio = DIO.Dio();
//       var response = await dio.post(
//         ApiManager.BASE_URL + apiurl,
//         data: formData,
//         options: DIO.Options(headers: {
//           "Accept": 'application/json',
//           'Content-Type': 'application/json',
//           "Authorization": "Bearer ${token.toString()}",
//         }),
//         onSendProgress: (int sent, int total) {
//           debugPrint("total ${total.toString()} " "   sent ${sent.toString()}");
//         },
//       ).whenComplete(() {
//         debugPrint("POST Complete:");
//       }).catchError((onError) {
//         Toast().error(massage: "Invalid Data");
//         debugPrint("POST Error: ${onError.toString()}");
//       });
//       return response;
//     } catch (e) {
//       print(['POST API exception get', e.toString()]);
//     }
//     // }
//   }
// }
