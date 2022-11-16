// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/account_settings/account_settings_bloc.dart' as _i17;
import 'application/auth/auth_bloc/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i15;
import 'application/orders/new_order_form/new_order_form_bloc.dart' as _i10;
import 'application/orders/order_watcher/order_watcher_bloc.dart' as _i11;
import 'application/orders/orders_actor/orders_actor_bloc.dart' as _i12;
import 'application/orders/orders_watcher.dart/orders_watcher_bloc.dart'
    as _i13;
import 'application/theme/theme_bloc/theme_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/orders/i_order_repository.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i7;
import 'infrastructure/core/injectable_modules.dart' as _i19;
import 'infrastructure/orders/order_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => injectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.AuthFacade(
        get<_i3.FirebaseAuth>(),
        get<_i4.FirebaseFirestore>(),
        get<_i5.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i8.IOrderRepository>(
      () => _i9.OrderRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.NewOrderFormBloc>(
      () => _i10.NewOrderFormBloc(get<_i8.IOrderRepository>()));
  gh.factory<_i11.OrderWatcherBloc>(
      () => _i11.OrderWatcherBloc(get<_i8.IOrderRepository>()));
  gh.factory<_i12.OrdersActorBloc>(
      () => _i12.OrdersActorBloc(get<_i8.IOrderRepository>()));
  gh.factory<_i13.OrdersWatcherBloc>(
      () => _i13.OrdersWatcherBloc(get<_i8.IOrderRepository>()));
  gh.factory<_i14.SignInFormBloc>(
      () => _i14.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i15.SignUpFormBloc>(
      () => _i15.SignUpFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.ThemeBloc>(() => _i16.ThemeBloc(get<int>()));
  gh.factory<_i17.AccountSettingsBloc>(
      () => _i17.AccountSettingsBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i19.InjectableModule {}
