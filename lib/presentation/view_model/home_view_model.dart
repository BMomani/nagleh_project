import 'package:e_shop/presentation/model/notification_model.dart';
import 'package:e_shop/presentation/views/home_view/Categories_view.dart';
import 'package:e_shop/presentation/views/home_view/cart_view.dart';
import 'package:e_shop/presentation/views/home_view/favorites_view.dart';
import 'package:e_shop/presentation/views/home_view/home_view.dart';
import 'package:e_shop/presentation/views/home_view/profile_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel();

  List<Widget> homeViews = const [
    HomeView(),
    CategoriesView(),
    FavoritesView(),
    CartView(),
    ProfileView(),
  ];
  int _active = 0;
  int get active => _active;
  int _carouselIndex = 0;
  int get carouselIndex => _carouselIndex;
  int _categoriesCarouselIndex = 0;
  int get categoriesCarouselIndex => _categoriesCarouselIndex;
  void bottomNavigationChangeActiveItem(int newValue) {
    _active = newValue;
    notifyListeners();
  }

  void carouselChangeIndex(int index) {
    _carouselIndex = index;
    notifyListeners();
  }

  void categoriesCarouselChangeIndex(int index) {
    _categoriesCarouselIndex = index;
    notifyListeners();
  }

  List<Map<String, dynamic>> notification = [
    {
      'time': tr("today"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
    {
      'time': tr("today"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
    {
      'time': tr("today"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
    {
      'time': tr("yesterday"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
    {
      'time': tr("yesterday"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
    {
      'time': tr("yesterday"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
    {
      'time': tr("yesterday"),
      'notification':
          NotificationModel(tr("notificationTitle"), tr("notificationContent")),
    },
  ];
}
