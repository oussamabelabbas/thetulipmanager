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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:dartz/dartz.dart' as _i17;
import 'package:flutter/material.dart' as _i15;

import '../../../domain/core/value_object.dart' as _i16;
import '../../screens/auth/auth_screen.dart' as _i9;
import '../../screens/error/error_screen.dart' as _i8;
import '../../screens/home/home_screen.dart' as _i3;
import '../../screens/orders/clients/clients_screen.dart' as _i6;
import '../../screens/orders/new_order/new_order_screen.dart' as _i7;
import '../../screens/orders/order/order_screen.dart' as _i4;
import '../../screens/orders/products/products_screen.dart' as _i5;
import '../../screens/profile/pages/about_screen.dart' as _i13;
import '../../screens/profile/pages/language_settings.dart' as _i12;
import '../../screens/profile/pages/notificatons_settings.dart' as _i11;
import '../../screens/profile/profile_screen.dart' as _i10;
import '../../screens/splash/splash_screen.dart' as _i1;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    OrderScreenRoute.name: (routeData) {
      final args = routeData.argsAs<OrderScreenRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.OrderScreen(
          key: args.key,
          orderId: args.orderId,
        ),
      );
    },
    ProductsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsScreenRouteArgs>(
          orElse: () => const ProductsScreenRouteArgs());
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ProductsScreen(
          key: args.key,
          shouldReturnProduct: args.shouldReturnProduct,
        ),
      );
    },
    ClientsScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ClientsScreen(),
      );
    },
    NewOrderScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewOrderScreenRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.NewOrderScreen(
          key: args.key,
          orderIdOption: args.orderIdOption,
        ),
      );
    },
    ErrorScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ErrorScreen(),
      );
    },
    AuthScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.AuthScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    NotificationsSettingsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.NotificationsSettings(),
      );
    },
    LanguageSettingsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.LanguageSettings(),
      );
    },
    AboutScreenRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.AboutScreen(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i14.RouteConfig(
          AuthRoute.name,
          path: '/empty-router-page',
          children: [
            _i14.RouteConfig(
              AuthScreenRoute.name,
              path: '',
              parent: AuthRoute.name,
            )
          ],
        ),
        _i14.RouteConfig(
          ProfileRoute.name,
          path: '/empty-router-page',
          children: [
            _i14.RouteConfig(
              ProfileScreenRoute.name,
              path: '',
              parent: ProfileRoute.name,
            ),
            _i14.RouteConfig(
              NotificationsSettingsRoute.name,
              path: 'notifications-settings',
              parent: ProfileRoute.name,
            ),
            _i14.RouteConfig(
              LanguageSettingsRoute.name,
              path: 'language-settings',
              parent: ProfileRoute.name,
            ),
            _i14.RouteConfig(
              AboutScreenRoute.name,
              path: 'about-screen',
              parent: ProfileRoute.name,
            ),
          ],
        ),
        _i14.RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        _i14.RouteConfig(
          OrderScreenRoute.name,
          path: '/order-screen',
        ),
        _i14.RouteConfig(
          ProductsScreenRoute.name,
          path: '/products-screen',
        ),
        _i14.RouteConfig(
          ClientsScreenRoute.name,
          path: '/clients-screen',
        ),
        _i14.RouteConfig(
          NewOrderScreenRoute.name,
          path: '/new-order-screen',
        ),
        _i14.RouteConfig(
          ErrorScreenRoute.name,
          path: '/error-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i14.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AuthRoute extends _i14.PageRouteInfo<void> {
  const AuthRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i14.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.OrderScreen]
class OrderScreenRoute extends _i14.PageRouteInfo<OrderScreenRouteArgs> {
  OrderScreenRoute({
    _i15.Key? key,
    required _i16.UniqueId orderId,
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

  final _i15.Key? key;

  final _i16.UniqueId orderId;

  @override
  String toString() {
    return 'OrderScreenRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [_i5.ProductsScreen]
class ProductsScreenRoute extends _i14.PageRouteInfo<ProductsScreenRouteArgs> {
  ProductsScreenRoute({
    _i15.Key? key,
    bool shouldReturnProduct = true,
  }) : super(
          ProductsScreenRoute.name,
          path: '/products-screen',
          args: ProductsScreenRouteArgs(
            key: key,
            shouldReturnProduct: shouldReturnProduct,
          ),
        );

  static const String name = 'ProductsScreenRoute';
}

class ProductsScreenRouteArgs {
  const ProductsScreenRouteArgs({
    this.key,
    this.shouldReturnProduct = true,
  });

  final _i15.Key? key;

  final bool shouldReturnProduct;

  @override
  String toString() {
    return 'ProductsScreenRouteArgs{key: $key, shouldReturnProduct: $shouldReturnProduct}';
  }
}

/// generated route for
/// [_i6.ClientsScreen]
class ClientsScreenRoute extends _i14.PageRouteInfo<void> {
  const ClientsScreenRoute()
      : super(
          ClientsScreenRoute.name,
          path: '/clients-screen',
        );

  static const String name = 'ClientsScreenRoute';
}

/// generated route for
/// [_i7.NewOrderScreen]
class NewOrderScreenRoute extends _i14.PageRouteInfo<NewOrderScreenRouteArgs> {
  NewOrderScreenRoute({
    _i15.Key? key,
    required _i17.Option<_i16.UniqueId> orderIdOption,
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

  final _i15.Key? key;

  final _i17.Option<_i16.UniqueId> orderIdOption;

  @override
  String toString() {
    return 'NewOrderScreenRouteArgs{key: $key, orderIdOption: $orderIdOption}';
  }
}

/// generated route for
/// [_i8.ErrorScreen]
class ErrorScreenRoute extends _i14.PageRouteInfo<void> {
  const ErrorScreenRoute()
      : super(
          ErrorScreenRoute.name,
          path: '/error-screen',
        );

  static const String name = 'ErrorScreenRoute';
}

/// generated route for
/// [_i9.AuthScreen]
class AuthScreenRoute extends _i14.PageRouteInfo<void> {
  const AuthScreenRoute()
      : super(
          AuthScreenRoute.name,
          path: '',
        );

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileScreenRoute extends _i14.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i11.NotificationsSettings]
class NotificationsSettingsRoute extends _i14.PageRouteInfo<void> {
  const NotificationsSettingsRoute()
      : super(
          NotificationsSettingsRoute.name,
          path: 'notifications-settings',
        );

  static const String name = 'NotificationsSettingsRoute';
}

/// generated route for
/// [_i12.LanguageSettings]
class LanguageSettingsRoute extends _i14.PageRouteInfo<void> {
  const LanguageSettingsRoute()
      : super(
          LanguageSettingsRoute.name,
          path: 'language-settings',
        );

  static const String name = 'LanguageSettingsRoute';
}

/// generated route for
/// [_i13.AboutScreen]
class AboutScreenRoute extends _i14.PageRouteInfo<void> {
  const AboutScreenRoute()
      : super(
          AboutScreenRoute.name,
          path: 'about-screen',
        );

  static const String name = 'AboutScreenRoute';
}
