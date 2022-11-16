// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:dartz/dartz.dart' as _i18;
import 'package:flutter/material.dart' as _i16;

import '../../../domain/core/value_object.dart' as _i17;
import '../../core/home.dart' as _i4;
import '../../screens/auth/auth_screen.dart' as _i2;
import '../../screens/auth/sign_up_screen.dart' as _i3;
import '../../screens/error/error_screen.dart' as _i10;
import '../../screens/home/home_screen.dart' as _i11;
import '../../screens/order/new_order/new_order_screen.dart' as _i9;
import '../../screens/order/order/order_screen.dart' as _i8;
import '../../screens/orders/orders_screen.dart' as _i12;
import '../../screens/profile/pages/about_screen.dart' as _i7;
import '../../screens/profile/pages/language_settings.dart' as _i6;
import '../../screens/profile/pages/notificatons_settings.dart' as _i5;
import '../../screens/profile/profile_screen.dart' as _i14;
import '../../screens/splash/splash_screen.dart' as _i1;
import '../../screens/wallet/wallet_screen.dart' as _i13;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    AuthScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.Home(),
      );
    },
    NotificationsSettingsRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.NotificationsSettings(),
      );
    },
    LanguageSettingsRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.LanguageSettings(),
      );
    },
    AboutScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.AboutScreen(),
      );
    },
    OrderScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OrderScreenRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.OrderScreen(
          key: args.key,
          orderId: args.orderId,
        ),
      );
    },
    NewOrderScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewOrderScreenRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.NewOrderScreen(
          key: args.key,
          orderIdOption: args.orderIdOption,
        ),
      );
    },
    ErrorScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ErrorScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.HomeScreen(),
      );
    },
    OrdersScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.OrdersScreen(),
      );
    },
    WalletScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.WalletScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i15.RouteConfig(
          AuthScreenRoute.name,
          path: '/auth-screen',
        ),
        _i15.RouteConfig(
          SignUpScreenRoute.name,
          path: '/sign-up-screen',
        ),
        _i15.RouteConfig(
          HomeRoute.name,
          path: '/Home',
          children: [
            _i15.RouteConfig(
              HomeScreenRoute.name,
              path: 'home-screen',
              parent: HomeRoute.name,
            ),
            _i15.RouteConfig(
              OrdersScreenRoute.name,
              path: 'orders-screen',
              parent: HomeRoute.name,
            ),
            _i15.RouteConfig(
              WalletScreenRoute.name,
              path: 'wallet-screen',
              parent: HomeRoute.name,
            ),
            _i15.RouteConfig(
              ProfileScreenRoute.name,
              path: 'profile-screen',
              parent: HomeRoute.name,
            ),
          ],
        ),
        _i15.RouteConfig(
          NotificationsSettingsRoute.name,
          path: '/notifications-settings',
        ),
        _i15.RouteConfig(
          LanguageSettingsRoute.name,
          path: '/language-settings',
        ),
        _i15.RouteConfig(
          AboutScreenRoute.name,
          path: '/about-screen',
        ),
        _i15.RouteConfig(
          OrderScreenRoute.name,
          path: '/order-screen',
        ),
        _i15.RouteConfig(
          NewOrderScreenRoute.name,
          path: '/new-order-screen',
        ),
        _i15.RouteConfig(
          ErrorScreenRoute.name,
          path: '/error-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i15.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.AuthScreen]
class AuthScreenRoute extends _i15.PageRouteInfo<void> {
  const AuthScreenRoute()
      : super(
          AuthScreenRoute.name,
          path: '/auth-screen',
        );

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreenRoute extends _i15.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(
          SignUpScreenRoute.name,
          path: '/sign-up-screen',
        );

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i4.Home]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/Home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.NotificationsSettings]
class NotificationsSettingsRoute extends _i15.PageRouteInfo<void> {
  const NotificationsSettingsRoute()
      : super(
          NotificationsSettingsRoute.name,
          path: '/notifications-settings',
        );

  static const String name = 'NotificationsSettingsRoute';
}

/// generated route for
/// [_i6.LanguageSettings]
class LanguageSettingsRoute extends _i15.PageRouteInfo<void> {
  const LanguageSettingsRoute()
      : super(
          LanguageSettingsRoute.name,
          path: '/language-settings',
        );

  static const String name = 'LanguageSettingsRoute';
}

/// generated route for
/// [_i7.AboutScreen]
class AboutScreenRoute extends _i15.PageRouteInfo<void> {
  const AboutScreenRoute()
      : super(
          AboutScreenRoute.name,
          path: '/about-screen',
        );

  static const String name = 'AboutScreenRoute';
}

/// generated route for
/// [_i8.OrderScreen]
class OrderScreenRoute extends _i15.PageRouteInfo<OrderScreenRouteArgs> {
  OrderScreenRoute({
    _i16.Key? key,
    required _i17.UniqueId orderId,
  }) : super(
          OrderScreenRoute.name,
          path: '/order-screen',
          args: OrderScreenRouteArgs(
            key: key,
            orderId: orderId,
          ),
        );

  static const String name = 'OrderScreenRoute';
}

class OrderScreenRouteArgs {
  const OrderScreenRouteArgs({
    this.key,
    required this.orderId,
  });

  final _i16.Key? key;

  final _i17.UniqueId orderId;

  @override
  String toString() {
    return 'OrderScreenRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [_i9.NewOrderScreen]
class NewOrderScreenRoute extends _i15.PageRouteInfo<NewOrderScreenRouteArgs> {
  NewOrderScreenRoute({
    _i16.Key? key,
    required _i18.Option<_i17.UniqueId> orderIdOption,
  }) : super(
          NewOrderScreenRoute.name,
          path: '/new-order-screen',
          args: NewOrderScreenRouteArgs(
            key: key,
            orderIdOption: orderIdOption,
          ),
        );

  static const String name = 'NewOrderScreenRoute';
}

class NewOrderScreenRouteArgs {
  const NewOrderScreenRouteArgs({
    this.key,
    required this.orderIdOption,
  });

  final _i16.Key? key;

  final _i18.Option<_i17.UniqueId> orderIdOption;

  @override
  String toString() {
    return 'NewOrderScreenRouteArgs{key: $key, orderIdOption: $orderIdOption}';
  }
}

/// generated route for
/// [_i10.ErrorScreen]
class ErrorScreenRoute extends _i15.PageRouteInfo<void> {
  const ErrorScreenRoute()
      : super(
          ErrorScreenRoute.name,
          path: '/error-screen',
        );

  static const String name = 'ErrorScreenRoute';
}

/// generated route for
/// [_i11.HomeScreen]
class HomeScreenRoute extends _i15.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i12.OrdersScreen]
class OrdersScreenRoute extends _i15.PageRouteInfo<void> {
  const OrdersScreenRoute()
      : super(
          OrdersScreenRoute.name,
          path: 'orders-screen',
        );

  static const String name = 'OrdersScreenRoute';
}

/// generated route for
/// [_i13.WalletScreen]
class WalletScreenRoute extends _i15.PageRouteInfo<void> {
  const WalletScreenRoute()
      : super(
          WalletScreenRoute.name,
          path: 'wallet-screen',
        );

  static const String name = 'WalletScreenRoute';
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileScreenRoute extends _i15.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile-screen',
        );

  static const String name = 'ProfileScreenRoute';
}
