// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:thetulipmanager/application/auth/account_settings/account_settings_bloc.dart'
    as _i18;
import 'package:thetulipmanager/application/auth/auth_bloc/auth_bloc.dart'
    as _i19;
import 'package:thetulipmanager/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i16;
import 'package:thetulipmanager/application/auth/sign_up_form/sign_up_form_bloc.dart'
    as _i17;
import 'package:thetulipmanager/application/orders/client_fetcher/client_fetcher_bloc.dart'
    as _i20;
import 'package:thetulipmanager/application/orders/clients_watcher/clients_watcher_bloc.dart'
    as _i21;
import 'package:thetulipmanager/application/orders/new_order_form/new_order_form_bloc.dart'
    as _i11;
import 'package:thetulipmanager/application/orders/order_watcher/order_watcher_bloc.dart'
    as _i12;
import 'package:thetulipmanager/application/orders/orders_actor/orders_actor_bloc.dart'
    as _i13;
import 'package:thetulipmanager/application/orders/orders_watcher.dart/orders_watcher_bloc.dart'
    as _i14;
import 'package:thetulipmanager/application/orders/products_watcher/products_watcher_bloc.dart'
    as _i15;
import 'package:thetulipmanager/domain/auth/i_auth_facade.dart' as _i7;
import 'package:thetulipmanager/domain/orders/i_order_repository.dart' as _i9;
import 'package:thetulipmanager/infrastructure/auth/auth_facade.dart' as _i8;
import 'package:thetulipmanager/infrastructure/orders/order_repository.dart'
    as _i10;

import 'infrastructure/core/injectable_modules.dart' as _i22;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => injectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.FirebaseStorage>(() => injectableModule.firebaseStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.AuthFacade(
        gh<_i3.FirebaseAuth>(),
        gh<_i4.FirebaseFirestore>(),
        gh<_i6.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i9.IOrderRepository>(() => _i10.OrderRepository(
        gh<_i4.FirebaseFirestore>(),
        gh<_i5.FirebaseStorage>(),
      ));
  gh.factory<_i11.NewOrderFormBloc>(
      () => _i11.NewOrderFormBloc(gh<_i9.IOrderRepository>()));
  gh.factory<_i12.OrderWatcherBloc>(
      () => _i12.OrderWatcherBloc(gh<_i9.IOrderRepository>()));
  gh.factory<_i13.OrdersActorBloc>(
      () => _i13.OrdersActorBloc(gh<_i9.IOrderRepository>()));
  gh.factory<_i14.OrdersWatcherBloc>(
      () => _i14.OrdersWatcherBloc(gh<_i9.IOrderRepository>()));
  gh.factory<_i15.ProductsWatcherBloc>(
      () => _i15.ProductsWatcherBloc(gh<_i9.IOrderRepository>()));
  gh.factory<_i16.SignInFormBloc>(
      () => _i16.SignInFormBloc(gh<_i7.IAuthFacade>()));
  gh.factory<_i17.SignUpFormBloc>(
      () => _i17.SignUpFormBloc(gh<_i7.IAuthFacade>()));
  gh.factory<_i18.AccountSettingsBloc>(
      () => _i18.AccountSettingsBloc(gh<_i7.IAuthFacade>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(gh<_i7.IAuthFacade>()));
  gh.factory<_i20.ClientFetcherBloc>(
      () => _i20.ClientFetcherBloc(gh<_i9.IOrderRepository>()));
  gh.factory<_i21.ClientsWatcherBloc>(
      () => _i21.ClientsWatcherBloc(gh<_i9.IOrderRepository>()));
  return getIt;
}

class _$InjectableModule extends _i22.InjectableModule {}
