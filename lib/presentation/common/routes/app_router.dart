import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

import '../../screens/auth/auth_screen.dart';
import '../../screens/error/error_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/orders/clients/clients_screen.dart';
import '../../screens/orders/new_order/new_order_screen.dart';
import '../../screens/orders/order/order_screen.dart';
import '../../screens/orders/products/products_screen.dart';
import '../../screens/profile/pages/about_screen.dart';
import '../../screens/profile/pages/language_settings.dart';
import '../../screens/profile/pages/notificatons_settings.dart';
import '../../screens/profile/profile_screen.dart';
import '../../screens/splash/splash_screen.dart';

@CustomAutoRouter(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(
      page: EmptyRouterPage,
      name: 'AuthRoute',
      children: [
        MaterialRoute(page: AuthScreen, initial: true),
      ],
    ),
    MaterialRoute(
      page: EmptyRouterPage,
      name: 'ProfileRoute',
      children: [
        MaterialRoute(page: ProfileScreen, initial: true),
        MaterialRoute(page: NotificationsSettings),
        MaterialRoute(page: LanguageSettings),
        MaterialRoute(page: AboutScreen),
      ],
    ),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: OrderScreen),
    MaterialRoute(page: ProductsScreen),
    MaterialRoute(page: ClientsScreen),
    MaterialRoute(page: NewOrderScreen),
    MaterialRoute(page: ErrorScreen),
  ],
  preferRelativeImports: true,
)
class $AppRouter {}
