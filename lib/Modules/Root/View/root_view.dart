import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Modules/Home/View/home_view.dart';
import 'package:smartdistributor/Modules/Map/View/map_view.dart';
import 'package:smartdistributor/Modules/New%20Order/View/neworder_view.dart';
import 'package:smartdistributor/Modules/Root/View%20Model/root_viewmodel.dart';
import 'package:smartdistributor/Modules/Root/View/Components/nevbar_tile.dart';
import 'package:smartdistributor/Modules/Setting/View/setting_view.dart';

class RouteView extends StatelessWidget {
  RouteView({Key? key}) : super(key: key);

  final _serviceVM = Get.find<RootViewModel>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.backgroundColor,
          child: SafeArea(
            left: false,
            top: false,
            right: false,
            maintainBottomViewPadding: true,
            child: Scaffold(
              body: Obx(
                () => [
                  HomeView(),
                  MapShowView(),
                  NewOrderView(),
                  SettingView(),
                ][_serviceVM.currentItem.value],
              ),
              bottomNavigationBar: Container(
                height: 65,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, -1),
                  )
                ]),
                child: Obx(
                  () => Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      NavBarTile(
                        callback: () {
                          _serviceVM.currentItem.value = 0;
                        },
                        iconColor: _serviceVM.currentItem.value == 0
                            ? AppColors.primary
                            : AppColors.greyText.withOpacity(0.8),
                        isImageIcons: true,
                        icon: "assets/route/home.png",
                        title: "Home",
                        isSelected:
                            _serviceVM.currentItem.value == 0 ? true : false,
                      ),
                      NavBarTile(
                        callback: () {
                          _serviceVM.currentItem.value = 1;
                        },
                        iconColor: _serviceVM.currentItem.value == 1
                            ? AppColors.primary
                            : AppColors.greyText.withOpacity(0.8),
                        isImageIcons: true,
                        icon: "assets/route/chats.png",
                        title: "Map",
                        isSelected:
                            _serviceVM.currentItem.value == 1 ? true : false,
                      ),
                      NavBarTile(
                        callback: () {
                          _serviceVM.currentItem.value = 2;
                        },
                        iconColor: _serviceVM.currentItem.value == 2
                            ? AppColors.primary
                            : AppColors.greyText.withOpacity(0.8),
                        isImageIcons: true,
                        icon: "assets/route/friends.png",
                        title: "New Order",
                        isSelected:
                            _serviceVM.currentItem.value == 2 ? true : false,
                      ),
                      NavBarTile(
                        callback: () {
                          _serviceVM.currentItem.value = 3;
                        },
                        iconColor: _serviceVM.currentItem.value == 3
                            ? AppColors.primary
                            : AppColors.greyText.withOpacity(0.8),
                        isImageIcons: true,
                        icon: "assets/route/settings.png",
                        isSelected:
                            _serviceVM.currentItem.value == 3 ? true : false,
                        title: "Settings",
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
