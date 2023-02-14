// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';


class DatabaseHandler {
  Future<bool> isExists(String inputString) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var check = prefs.getString(inputString);
    return check == null ? false : true;
  }

//? < = = = = = = = = = = = Current User Data = = = = = = = = = = = = = = = >
  // setCurrentUser(Map<String, dynamic> myData) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String rawJson = jsonEncode(myData);
  //   print(rawJson);
  //   final result = await prefs.setString('currentUser', rawJson);
  //   print('List is saved ' + result.toString());
  // }

  // setCurrentUser(UserModel user) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString("id", user.id.toString());
  //   await prefs.setString("name", user.name.toString());
  //   await prefs.setString("username", user.username.toString());
  //   await prefs.setString("email", user.email.toString());
  //   await prefs.setString("email_verified_at", user.emailVerifiedAt.toString());
  //   await prefs.setString("photo", user.photo.toString());
  //   await prefs.setString("bio", user.bio.toString());
  //   await prefs.setString("gender", user.gender.toString());
  //   await prefs.setString("phone", user.phone.toString());
  //   await prefs.setString("countryCode", user.countryCode.toString());
  //   await prefs.setString("phoneCode", user.phoneCode.toString());
  //   await prefs.setString("latitude", user.latitude.toString());
  //   await prefs.setString("longitude", user.longitude.toString());
  //   await prefs.setString("date_of_birth", user.dateOfBirth.toString());
  //   await prefs.setString("city", user.city.toString());
  //   await prefs.setString("country", user.country.toString());
  //   await prefs.setString("locale", user.locale.toString());
  //   await prefs.setString("otp", user.otp.toString());
  //   await prefs.setString("fcm_token", user.fcmToken.toString());
  //   await prefs.setString("created_at", user.createdAt.toString());
  //   await prefs.setString("updated_at", user.updatedAt.toString());

  //   print('saved current User Details');
  // }

  // Future<UserModel> getCurrentUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String id = await prefs.getString("id") ?? "";
  //   String name = await prefs.getString("name") ?? "";
  //   String username = await prefs.getString("username") ?? "";
  //   String email = await prefs.getString("email") ?? "";
  //   String email_verified_at = await prefs.getString("email_verified_at") ?? "";
  //   String photo = await prefs.getString("photo") ?? "";
  //   String bio = await prefs.getString("bio") ?? "";
  //   String gender = await prefs.getString("gender") ?? "";
  //   String phone = await prefs.getString("phone") ?? "";
  //   String countryCode = await prefs.getString("countryCode") ?? "";
  //   String phoneCode = await prefs.getString("phoneCode") ?? "";
  //   String latitude = await prefs.getString("latitude") ?? "";
  //   String longitude = await prefs.getString("longitude") ?? "";
  //   String date_of_birth = await prefs.getString("date_of_birth") ?? "";
  //   String city = await prefs.getString("city") ?? "";
  //   String country = await prefs.getString("country") ?? "";
  //   String locale = await prefs.getString("locale") ?? "";
  //   String otp = await prefs.getString("otp") ?? "";
  //   String fcm_token = await prefs.getString("fcm_token") ?? "";
  //   String created_at = await prefs.getString("created_at") ?? "";
  //   String updated_at = await prefs.getString("updated_at") ?? "";
  //   return UserModel(
  //     id: id,
  //     name: name,
  //     username: username,
  //     email: email,
  //     emailVerifiedAt: email_verified_at,
  //     photo: photo,
  //     bio: bio,
  //     gender: gender,
  //     phone: phone,
  //     countryCode: countryCode,
  //     phoneCode: phoneCode,
  //     latitude: latitude,
  //     longitude: longitude,
  //     dateOfBirth: date_of_birth,
  //     city: city,
  //     country: country,
  //     locale: locale,
  //     otp: otp,
  //     fcmToken: fcm_token,
  //     createdAt: created_at,
  //     updatedAt: updated_at,
  //   );
  // }

  // getCurrentUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final response = await prefs.getString('currentUser') ?? '';
  //   return jsonDecode(response);
  // }

  //? < = = = = = = = = = = = Stay LoggedIn value = = = = = = = = = = = = = = = >

  setStayLoggedIn(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var val = await prefs.setBool('stayloggedin', value);
    print("Stay LoggedIn value is $val");
  }

  getStayLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await prefs.getBool('stayloggedin') ?? false;
    return response;
  }

  //? < = = = = = = = = = = = Stay LoggedIn Email and Password value = = = = = = = = = = = = = = = >

  setStayEmail(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var val = await prefs.setString('stayemail', value);
    print("Stay Email save $val");
  }

  getStayEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await prefs.getString('stayemail') ?? "";
    return response;
  }

  setStayPassword(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var val = await prefs.setString('staypassword', value);
    print("Stay Email save $val");
  }

  getStayPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await prefs.getString('staypassword') ?? "";
    return response;
  }

//? < = = = = = = = = = = = User Access Token = = = = = = = = = = = = = = = >
  setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString('token', token);
    print("token saved " + result.toString());
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = prefs.getString('token') ?? "";
    return response;
  }

  removeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

//? < = = = = = = = = = = = User Type = = = = = = = = = = = = = = = >
  // setCurrentUserType(String token) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final result = await prefs.setString('usertype', token);
  //   print("token saved " + result.toString());
  // }

  // getCurrentUserType() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final response = prefs.getString('usertype') ?? "";
  //   return response;
  // }

//? < = = = = = = = = = = = User ID = = = = = = = = = = = = = = = >
  // setCurrentUserID(String id) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final result = await prefs.setString('userID', id);
  //   print("userID saved " + result.toString());
  // }

  // getCurrentUserID() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final response = prefs.getString('userID') ?? "";
  //   return response;
  // }

  // removeCurrentUserID() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.remove('userID');
  // }

  //? < = = = = = = = = = = = User FCM = = = = = = = = = = = = = = = >
  setFCMToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = await prefs.setString('FCM', token);
    print("fcm saved " + result.toString());
  }

  getFCMToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = prefs.getString('FCM') ?? "";
    return response;
  }

//? < = = = = = = = = = = = Logout = = = = = = = = = = = = =>
  logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove("id");
    await prefs.remove("name");
    await prefs.remove("username");
    await prefs.remove("email");
    await prefs.remove("email_verified_at");
    await prefs.remove("photo");
    await prefs.remove("bio");
    await prefs.remove("gender");
    await prefs.remove("phone");
    await prefs.remove("latitude");
    await prefs.remove("longitude");
    await prefs.remove("date_of_birth");
    await prefs.remove("city");
    await prefs.remove("country");
    await prefs.remove("locale");
    await prefs.remove("otp");
    await prefs.remove("fcm_token");
    await prefs.remove("created_at");
    await prefs.remove("updated_at");
    print("LogOut Successfull");
  }
}
