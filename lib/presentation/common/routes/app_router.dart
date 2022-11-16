import 'package:auto_route/auto_route.dart';

import '../../core/home.dart';
import '../../screens/auth/auth_screen.dart';
import '../../screens/auth/sign_up_screen.dart';
import '../../screens/error/error_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/order/new_order/new_order_screen.dart';
import '../../screens/order/order/order_screen.dart';
import '../../screens/orders/orders_screen.dart';
import '../../screens/profile/pages/about_screen.dart';
import '../../screens/profile/pages/language_settings.dart';
import '../../screens/profile/pages/notificatons_settings.dart';
import '../../screens/profile/profile_screen.dart';
import '../../screens/splash/splash_screen.dart';
import '../../screens/wallet/wallet_screen.dart';

@CustomAutoRouter(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: AuthScreen),
    MaterialRoute(page: SignUpScreen),
    MaterialRoute(page: Home, children: [
      MaterialRoute(page: HomeScreen),
      MaterialRoute(page: OrdersScreen),
      MaterialRoute(page: WalletScreen),
      MaterialRoute(page: ProfileScreen),
    ]),
    MaterialRoute(page: NotificationsSettings),
    MaterialRoute(page: LanguageSettings),
    MaterialRoute(page: AboutScreen),
    MaterialRoute(page: OrderScreen),
    MaterialRoute(page: NewOrderScreen),
    MaterialRoute(page: ErrorScreen),
  ],
  preferRelativeImports: true,
)
class $AppRouter {}
