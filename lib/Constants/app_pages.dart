import 'package:get/get.dart';
import 'package:smartdistributor/Modules/Auth/View%20Model/auth_viewmodel.dart';
import 'package:smartdistributor/Modules/Auth/View/forgot_view.dart';
import 'package:smartdistributor/Modules/Auth/View/login_view.dart';
import 'package:smartdistributor/Modules/Auth/View/register1_view.dart';
import 'package:smartdistributor/Modules/Auth/View/register2_view.dart';
import 'package:smartdistributor/Modules/Auth/View/register3_view.dart';
import 'package:smartdistributor/Modules/Auth/View/register_view.dart';
import 'package:smartdistributor/Modules/Auth/View/under_review.dart';
import 'package:smartdistributor/Modules/Home/View%20Model/home_viewmodel.dart';
import 'package:smartdistributor/Modules/Map/View%20Model/map_viewmodel.dart';
import 'package:smartdistributor/Modules/New%20Order/View%20Model/neworder_viewmodel.dart';
import 'package:smartdistributor/Modules/Root/View%20Model/root_viewmodel.dart';
import 'package:smartdistributor/Modules/Root/View/root_view.dart';
import 'package:smartdistributor/Modules/Setting/View%20Model/setting_viewmodel.dart';
import 'package:smartdistributor/Modules/Splash/View%20Model/splash_viewmodel.dart';
import 'package:smartdistributor/Modules/Splash/View/splash_view.dart';

import 'app_routes.dart';
// import 'package:showuptomeetup/Constants/app_routes.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View%20Controller/auth_controller.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/change_password_view.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/forgot_changepassword.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/forgot_view.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/login_phone_view.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/login_username_view.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/otp_view.dart';
// import 'package:showuptomeetup/Modules/Authentication%20Module/View/signup_view.dart';
// import 'package:showuptomeetup/Modules/Chat%20Module/View%20Controller/chat_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Chat%20Module/View/friends_list.dart';
// import 'package:showuptomeetup/Modules/Chat%20Room%20Module/View%20Controller/chatroom_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Chat%20Room%20Module/View/chatroom_view.dart';
// import 'package:showuptomeetup/Modules/Chat%20Room%20Module/View/user_profile_view.dart';
// import 'package:showuptomeetup/Modules/Friends%20Request%20module/View/congrat_newfriend.dart';
// import 'package:showuptomeetup/Modules/Friends%20Request%20module/View/incoming_request.dart';
// import 'package:showuptomeetup/Modules/Home%20Module/View%20Controller/home_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Navigation%20Route%20Module/View%20Controller/route_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Navigation%20Route%20Module/View/route_view.dart';
// import 'package:showuptomeetup/Modules/Offer%20Now%20Module/View%20Controller/offernow_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Offer%20Now%20Module/View/View%20Offers/get_office_view.dart';
// import 'package:showuptomeetup/Modules/Offer%20Now%20Module/View/View%20Offers/get_office_view1.dart';
// import 'package:showuptomeetup/Modules/Offer%20Now%20Module/View/View%20Offers/get_office_view2.dart';
// import 'package:showuptomeetup/Modules/Offer%20Now%20Module/View/offer_submit_view.dart';
// import 'package:showuptomeetup/Modules/Offer%20Now%20Module/View/offernow_view.dart';
// import 'package:showuptomeetup/Modules/On%20Boarding%20Module/View%20Controller/onboarding_controller.dart';
// import 'package:showuptomeetup/Modules/Profile%20Module/View%20Controller/profile_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Profile%20Module/View/profile_view.dart';
// import 'package:showuptomeetup/Modules/Request%20Module/View%20Controller/request_viewmodel.dart';
// import 'package:showuptomeetup/Modules/Request%20Module/View/request_view.dart';
// import 'package:showuptomeetup/Modules/Restaurant%20Module/View%20Controller/restaurant_viewmodel.dart';
// import 'package:showuptomeetup/Modules/Restaurant%20Module/View/free_user_view.dart';
// import 'package:showuptomeetup/Modules/Restaurant%20Module/View/restaurant_view.dart';
// import 'package:showuptomeetup/Modules/Setting%20Module/View%20Controller/setting_viewcontroller.dart';
// import 'package:showuptomeetup/Modules/Splash%20Module/View/splash_screen.dart';
// import 'package:showuptomeetup/Modules/Splash%20Module/View%20Controller/splash_controller.dart';
// import 'package:showuptomeetup/Utils/loading.dart';

// import '../Modules/On Boarding Module/View/onboarding1_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.SPLASH_SCREEN,
      page: () => SplashView(),
      transition: Transition.leftToRight,
      binding: BindingsBuilder(
        () {
          Get.lazyPut<SplashViewModel>(
            () => SplashViewModel(),
          );
        },
      ),
    ),
//     GetPage(
//       name: AppRoutes.ON_BOARDING,
//       page: () => OnBoardingView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<OnBoardingController>(
//             () => OnBoardingController(),
//           );
//         },
//       ),
//     ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {
          Get.lazyPut<AuthViewModel>(
            () => AuthViewModel(),
          );
        },
      ),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => RegisterView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {
          Get.lazyPut<AuthViewModel>(
            () => AuthViewModel(),
          );
        },
      ),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP_ONE,
      page: () => RegisterOneView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {},
      ),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP_TWO,
      page: () => RegisterTwoView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {},
      ),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP_THREE,
      page: () => RegisterThreeView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {},
      ),
    ),
    GetPage(
      name: AppRoutes.UNDER_REVIEW,
      page: () => UnderReviewView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {},
      ),
    ),
    GetPage(
      name: AppRoutes.FORGOT,
      page: () => ForgotView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {
          Get.lazyPut<AuthViewModel>(
            () => AuthViewModel(),
          );
        },
      ),
    ),
    GetPage(
      name: AppRoutes.ROUTE_SCREEN,
      page: () => RouteView(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(
        () {
          Get.lazyPut<RootViewModel>(
            () => RootViewModel(),
          );
          Get.lazyPut<HomeViewModel>(
            () => HomeViewModel(),
          );
          Get.lazyPut<MapViewModel>(
            () => MapViewModel(),
          );
          Get.lazyPut<NewOrderViewModel>(
            () => NewOrderViewModel(),
          );
          Get.lazyPut<SettingViewModel>(
            () => SettingViewModel(),
          );
        },
      ),
    ),
//     GetPage(
//       name: AppRoutes.FORGOT_CHANGE_PASSWORD,
//       page: () => ForgotChangePasswordView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<AuthenticationController>(
//             () => AuthenticationController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.CHANGE_PASSWORD,
//       page: () => ChangePasswordView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<AuthenticationController>(
//             () => AuthenticationController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.OTP,
//       page: () => OTPPhoneNumberView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<AuthenticationController>(
//             () => AuthenticationController(),
//           );
//         },
//       ),
//     ),

//     GetPage(
//       name: AppRoutes.PROFILE_UPDATE,
//       page: () => ProfileView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<ProfileViewController>(
//             () => ProfileViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.RESTAURANT_FRIENDS,
//       page: () => RestaurantView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<RestaurantViewController>(
//             () => RestaurantViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.FREE_USER_FRIENDS,
//       page: () => FreeUserView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<RestaurantViewController>(
//             () => RestaurantViewController(),
//           );
//           Get.lazyPut<HomeViewController>(
//             () => HomeViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.FRIENDS_REQUEST,
//       page: () => RequestView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<RequestViewController>(
//             () => RequestViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.FRIENDS_LIST,
//       page: () => FriendsListView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<ChatViewController>(
//             () => ChatViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.CHAT_ROOM,
//       page: () => ChatRoomView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<ChatRoomViewController>(
//             () => ChatRoomViewController(),
//           );
//         },
//       ),
//     ),

//     GetPage(
//       name: AppRoutes.USER_PROFILE,
//       page: () => UserProfileView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<ChatRoomViewController>(
//             () => ChatRoomViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.OFFER_NOW,
//       page: () => OfferNowView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<OfferNowViewController>(
//             () => OfferNowViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.GET_OFFER_NOW,
//       page: () => GetOfferView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<OfferNowViewController>(
//             () => OfferNowViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.GET_OFFER_NOW1,
//       page: () => ShowOfferView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<OfferNowViewController>(
//             () => OfferNowViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.GET_OFFER_NOW2,
//       page: () => ContinueChatView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<OfferNowViewController>(
//             () => OfferNowViewController(),
//           );
//         },
//       ),
//     ),

//     GetPage(
//       name: AppRoutes.OFFER_SUBMITE,
//       page: () => OfferSubmiteView(),
//       transition: Transition.rightToLeft,
//       binding: BindingsBuilder(
//         () {
//           Get.lazyPut<OfferNowViewController>(
//             () => OfferNowViewController(),
//           );
//         },
//       ),
//     ),
//     GetPage(
//       name: AppRoutes.LOADING,
//       page: () => loading(),
//       transition: Transition.rightToLeft,
//     ),
//     GetPage(
//       name: AppRoutes.INCOMING_REQUEST,
//       page: () => IncomingRequestView(),
//       transition: Transition.rightToLeft,
//     ),
//     GetPage(
//       name: AppRoutes.CONGRATS_NEWFRIEND,
//       page: () => CongratsNewFriendView(),
//       transition: Transition.rightToLeft,
//     ),
  ];
}
