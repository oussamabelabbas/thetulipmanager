// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(String productName) productNameChanged,
    required TResult Function(File? productImageFile) productImageFileChanged,
    required TResult Function() addProductPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchProductsStarted,
    TResult? Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult? Function(String productName)? productNameChanged,
    TResult? Function(File? productImageFile)? productImageFileChanged,
    TResult? Function()? addProductPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductsStarted,
    TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(String productName)? productNameChanged,
    TResult Function(File? productImageFile)? productImageFileChanged,
    TResult Function()? addProductPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchProductsStarted value) watchProductsStarted,
    required TResult Function(ProductsReceived value) productsReceived,
    required TResult Function(ProductNameChanged value) productNameChanged,
    required TResult Function(ProductImageFileChanged value)
        productImageFileChanged,
    required TResult Function(AddProductPressed value) addProductPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchProductsStarted value)? watchProductsStarted,
    TResult? Function(ProductsReceived value)? productsReceived,
    TResult? Function(ProductNameChanged value)? productNameChanged,
    TResult? Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult? Function(AddProductPressed value)? addProductPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchProductsStarted value)? watchProductsStarted,
    TResult Function(ProductsReceived value)? productsReceived,
    TResult Function(ProductNameChanged value)? productNameChanged,
    TResult Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult Function(AddProductPressed value)? addProductPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsWatcherEventCopyWith<$Res> {
  factory $ProductsWatcherEventCopyWith(ProductsWatcherEvent value,
          $Res Function(ProductsWatcherEvent) then) =
      _$ProductsWatcherEventCopyWithImpl<$Res, ProductsWatcherEvent>;
}

/// @nodoc
class _$ProductsWatcherEventCopyWithImpl<$Res,
        $Val extends ProductsWatcherEvent>
    implements $ProductsWatcherEventCopyWith<$Res> {
  _$ProductsWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WatchProductsStartedCopyWith<$Res> {
  factory _$$WatchProductsStartedCopyWith(_$WatchProductsStarted value,
          $Res Function(_$WatchProductsStarted) then) =
      __$$WatchProductsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchProductsStartedCopyWithImpl<$Res>
    extends _$ProductsWatcherEventCopyWithImpl<$Res, _$WatchProductsStarted>
    implements _$$WatchProductsStartedCopyWith<$Res> {
  __$$WatchProductsStartedCopyWithImpl(_$WatchProductsStarted _value,
      $Res Function(_$WatchProductsStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchProductsStarted implements WatchProductsStarted {
  const _$WatchProductsStarted();

  @override
  String toString() {
    return 'ProductsWatcherEvent.watchProductsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchProductsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(String productName) productNameChanged,
    required TResult Function(File? productImageFile) productImageFileChanged,
    required TResult Function() addProductPressed,
  }) {
    return watchProductsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchProductsStarted,
    TResult? Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult? Function(String productName)? productNameChanged,
    TResult? Function(File? productImageFile)? productImageFileChanged,
    TResult? Function()? addProductPressed,
  }) {
    return watchProductsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductsStarted,
    TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(String productName)? productNameChanged,
    TResult Function(File? productImageFile)? productImageFileChanged,
    TResult Function()? addProductPressed,
    required TResult orElse(),
  }) {
    if (watchProductsStarted != null) {
      return watchProductsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchProductsStarted value) watchProductsStarted,
    required TResult Function(ProductsReceived value) productsReceived,
    required TResult Function(ProductNameChanged value) productNameChanged,
    required TResult Function(ProductImageFileChanged value)
        productImageFileChanged,
    required TResult Function(AddProductPressed value) addProductPressed,
  }) {
    return watchProductsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchProductsStarted value)? watchProductsStarted,
    TResult? Function(ProductsReceived value)? productsReceived,
    TResult? Function(ProductNameChanged value)? productNameChanged,
    TResult? Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult? Function(AddProductPressed value)? addProductPressed,
  }) {
    return watchProductsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchProductsStarted value)? watchProductsStarted,
    TResult Function(ProductsReceived value)? productsReceived,
    TResult Function(ProductNameChanged value)? productNameChanged,
    TResult Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult Function(AddProductPressed value)? addProductPressed,
    required TResult orElse(),
  }) {
    if (watchProductsStarted != null) {
      return watchProductsStarted(this);
    }
    return orElse();
  }
}

abstract class WatchProductsStarted implements ProductsWatcherEvent {
  const factory WatchProductsStarted() = _$WatchProductsStarted;
}

/// @nodoc
abstract class _$$ProductsReceivedCopyWith<$Res> {
  factory _$$ProductsReceivedCopyWith(
          _$ProductsReceived value, $Res Function(_$ProductsReceived) then) =
      __$$ProductsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirebaseFailure, KtList<Product>> failureOrProducts});
}

/// @nodoc
class __$$ProductsReceivedCopyWithImpl<$Res>
    extends _$ProductsWatcherEventCopyWithImpl<$Res, _$ProductsReceived>
    implements _$$ProductsReceivedCopyWith<$Res> {
  __$$ProductsReceivedCopyWithImpl(
      _$ProductsReceived _value, $Res Function(_$ProductsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrProducts = null,
  }) {
    return _then(_$ProductsReceived(
      failureOrProducts: null == failureOrProducts
          ? _value.failureOrProducts
          : failureOrProducts // ignore: cast_nullable_to_non_nullable
              as Either<FirebaseFailure, KtList<Product>>,
    ));
  }
}

/// @nodoc

class _$ProductsReceived implements ProductsReceived {
  const _$ProductsReceived({required this.failureOrProducts});

  @override
  final Either<FirebaseFailure, KtList<Product>> failureOrProducts;

  @override
  String toString() {
    return 'ProductsWatcherEvent.productsReceived(failureOrProducts: $failureOrProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsReceived &&
            (identical(other.failureOrProducts, failureOrProducts) ||
                other.failureOrProducts == failureOrProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsReceivedCopyWith<_$ProductsReceived> get copyWith =>
      __$$ProductsReceivedCopyWithImpl<_$ProductsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(String productName) productNameChanged,
    required TResult Function(File? productImageFile) productImageFileChanged,
    required TResult Function() addProductPressed,
  }) {
    return productsReceived(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchProductsStarted,
    TResult? Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult? Function(String productName)? productNameChanged,
    TResult? Function(File? productImageFile)? productImageFileChanged,
    TResult? Function()? addProductPressed,
  }) {
    return productsReceived?.call(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductsStarted,
    TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(String productName)? productNameChanged,
    TResult Function(File? productImageFile)? productImageFileChanged,
    TResult Function()? addProductPressed,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(failureOrProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchProductsStarted value) watchProductsStarted,
    required TResult Function(ProductsReceived value) productsReceived,
    required TResult Function(ProductNameChanged value) productNameChanged,
    required TResult Function(ProductImageFileChanged value)
        productImageFileChanged,
    required TResult Function(AddProductPressed value) addProductPressed,
  }) {
    return productsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchProductsStarted value)? watchProductsStarted,
    TResult? Function(ProductsReceived value)? productsReceived,
    TResult? Function(ProductNameChanged value)? productNameChanged,
    TResult? Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult? Function(AddProductPressed value)? addProductPressed,
  }) {
    return productsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchProductsStarted value)? watchProductsStarted,
    TResult Function(ProductsReceived value)? productsReceived,
    TResult Function(ProductNameChanged value)? productNameChanged,
    TResult Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult Function(AddProductPressed value)? addProductPressed,
    required TResult orElse(),
  }) {
    if (productsReceived != null) {
      return productsReceived(this);
    }
    return orElse();
  }
}

abstract class ProductsReceived implements ProductsWatcherEvent {
  const factory ProductsReceived(
      {required final Either<FirebaseFailure, KtList<Product>>
          failureOrProducts}) = _$ProductsReceived;

  Either<FirebaseFailure, KtList<Product>> get failureOrProducts;
  @JsonKey(ignore: true)
  _$$ProductsReceivedCopyWith<_$ProductsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductNameChangedCopyWith<$Res> {
  factory _$$ProductNameChangedCopyWith(_$ProductNameChanged value,
          $Res Function(_$ProductNameChanged) then) =
      __$$ProductNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String productName});
}

/// @nodoc
class __$$ProductNameChangedCopyWithImpl<$Res>
    extends _$ProductsWatcherEventCopyWithImpl<$Res, _$ProductNameChanged>
    implements _$$ProductNameChangedCopyWith<$Res> {
  __$$ProductNameChangedCopyWithImpl(
      _$ProductNameChanged _value, $Res Function(_$ProductNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
  }) {
    return _then(_$ProductNameChanged(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductNameChanged implements ProductNameChanged {
  const _$ProductNameChanged({required this.productName});

  @override
  final String productName;

  @override
  String toString() {
    return 'ProductsWatcherEvent.productNameChanged(productName: $productName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductNameChanged &&
            (identical(other.productName, productName) ||
                other.productName == productName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductNameChangedCopyWith<_$ProductNameChanged> get copyWith =>
      __$$ProductNameChangedCopyWithImpl<_$ProductNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(String productName) productNameChanged,
    required TResult Function(File? productImageFile) productImageFileChanged,
    required TResult Function() addProductPressed,
  }) {
    return productNameChanged(productName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchProductsStarted,
    TResult? Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult? Function(String productName)? productNameChanged,
    TResult? Function(File? productImageFile)? productImageFileChanged,
    TResult? Function()? addProductPressed,
  }) {
    return productNameChanged?.call(productName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductsStarted,
    TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(String productName)? productNameChanged,
    TResult Function(File? productImageFile)? productImageFileChanged,
    TResult Function()? addProductPressed,
    required TResult orElse(),
  }) {
    if (productNameChanged != null) {
      return productNameChanged(productName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchProductsStarted value) watchProductsStarted,
    required TResult Function(ProductsReceived value) productsReceived,
    required TResult Function(ProductNameChanged value) productNameChanged,
    required TResult Function(ProductImageFileChanged value)
        productImageFileChanged,
    required TResult Function(AddProductPressed value) addProductPressed,
  }) {
    return productNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchProductsStarted value)? watchProductsStarted,
    TResult? Function(ProductsReceived value)? productsReceived,
    TResult? Function(ProductNameChanged value)? productNameChanged,
    TResult? Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult? Function(AddProductPressed value)? addProductPressed,
  }) {
    return productNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchProductsStarted value)? watchProductsStarted,
    TResult Function(ProductsReceived value)? productsReceived,
    TResult Function(ProductNameChanged value)? productNameChanged,
    TResult Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult Function(AddProductPressed value)? addProductPressed,
    required TResult orElse(),
  }) {
    if (productNameChanged != null) {
      return productNameChanged(this);
    }
    return orElse();
  }
}

abstract class ProductNameChanged implements ProductsWatcherEvent {
  const factory ProductNameChanged({required final String productName}) =
      _$ProductNameChanged;

  String get productName;
  @JsonKey(ignore: true)
  _$$ProductNameChangedCopyWith<_$ProductNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductImageFileChangedCopyWith<$Res> {
  factory _$$ProductImageFileChangedCopyWith(_$ProductImageFileChanged value,
          $Res Function(_$ProductImageFileChanged) then) =
      __$$ProductImageFileChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({File? productImageFile});
}

/// @nodoc
class __$$ProductImageFileChangedCopyWithImpl<$Res>
    extends _$ProductsWatcherEventCopyWithImpl<$Res, _$ProductImageFileChanged>
    implements _$$ProductImageFileChangedCopyWith<$Res> {
  __$$ProductImageFileChangedCopyWithImpl(_$ProductImageFileChanged _value,
      $Res Function(_$ProductImageFileChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productImageFile = freezed,
  }) {
    return _then(_$ProductImageFileChanged(
      productImageFile: freezed == productImageFile
          ? _value.productImageFile
          : productImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ProductImageFileChanged implements ProductImageFileChanged {
  const _$ProductImageFileChanged({required this.productImageFile});

  @override
  final File? productImageFile;

  @override
  String toString() {
    return 'ProductsWatcherEvent.productImageFileChanged(productImageFile: $productImageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageFileChanged &&
            (identical(other.productImageFile, productImageFile) ||
                other.productImageFile == productImageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productImageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageFileChangedCopyWith<_$ProductImageFileChanged> get copyWith =>
      __$$ProductImageFileChangedCopyWithImpl<_$ProductImageFileChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(String productName) productNameChanged,
    required TResult Function(File? productImageFile) productImageFileChanged,
    required TResult Function() addProductPressed,
  }) {
    return productImageFileChanged(productImageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchProductsStarted,
    TResult? Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult? Function(String productName)? productNameChanged,
    TResult? Function(File? productImageFile)? productImageFileChanged,
    TResult? Function()? addProductPressed,
  }) {
    return productImageFileChanged?.call(productImageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductsStarted,
    TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(String productName)? productNameChanged,
    TResult Function(File? productImageFile)? productImageFileChanged,
    TResult Function()? addProductPressed,
    required TResult orElse(),
  }) {
    if (productImageFileChanged != null) {
      return productImageFileChanged(productImageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchProductsStarted value) watchProductsStarted,
    required TResult Function(ProductsReceived value) productsReceived,
    required TResult Function(ProductNameChanged value) productNameChanged,
    required TResult Function(ProductImageFileChanged value)
        productImageFileChanged,
    required TResult Function(AddProductPressed value) addProductPressed,
  }) {
    return productImageFileChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchProductsStarted value)? watchProductsStarted,
    TResult? Function(ProductsReceived value)? productsReceived,
    TResult? Function(ProductNameChanged value)? productNameChanged,
    TResult? Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult? Function(AddProductPressed value)? addProductPressed,
  }) {
    return productImageFileChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchProductsStarted value)? watchProductsStarted,
    TResult Function(ProductsReceived value)? productsReceived,
    TResult Function(ProductNameChanged value)? productNameChanged,
    TResult Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult Function(AddProductPressed value)? addProductPressed,
    required TResult orElse(),
  }) {
    if (productImageFileChanged != null) {
      return productImageFileChanged(this);
    }
    return orElse();
  }
}

abstract class ProductImageFileChanged implements ProductsWatcherEvent {
  const factory ProductImageFileChanged(
      {required final File? productImageFile}) = _$ProductImageFileChanged;

  File? get productImageFile;
  @JsonKey(ignore: true)
  _$$ProductImageFileChangedCopyWith<_$ProductImageFileChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductPressedCopyWith<$Res> {
  factory _$$AddProductPressedCopyWith(
          _$AddProductPressed value, $Res Function(_$AddProductPressed) then) =
      __$$AddProductPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddProductPressedCopyWithImpl<$Res>
    extends _$ProductsWatcherEventCopyWithImpl<$Res, _$AddProductPressed>
    implements _$$AddProductPressedCopyWith<$Res> {
  __$$AddProductPressedCopyWithImpl(
      _$AddProductPressed _value, $Res Function(_$AddProductPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddProductPressed implements AddProductPressed {
  const _$AddProductPressed();

  @override
  String toString() {
    return 'ProductsWatcherEvent.addProductPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddProductPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchProductsStarted,
    required TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)
        productsReceived,
    required TResult Function(String productName) productNameChanged,
    required TResult Function(File? productImageFile) productImageFileChanged,
    required TResult Function() addProductPressed,
  }) {
    return addProductPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchProductsStarted,
    TResult? Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult? Function(String productName)? productNameChanged,
    TResult? Function(File? productImageFile)? productImageFileChanged,
    TResult? Function()? addProductPressed,
  }) {
    return addProductPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchProductsStarted,
    TResult Function(
            Either<FirebaseFailure, KtList<Product>> failureOrProducts)?
        productsReceived,
    TResult Function(String productName)? productNameChanged,
    TResult Function(File? productImageFile)? productImageFileChanged,
    TResult Function()? addProductPressed,
    required TResult orElse(),
  }) {
    if (addProductPressed != null) {
      return addProductPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchProductsStarted value) watchProductsStarted,
    required TResult Function(ProductsReceived value) productsReceived,
    required TResult Function(ProductNameChanged value) productNameChanged,
    required TResult Function(ProductImageFileChanged value)
        productImageFileChanged,
    required TResult Function(AddProductPressed value) addProductPressed,
  }) {
    return addProductPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchProductsStarted value)? watchProductsStarted,
    TResult? Function(ProductsReceived value)? productsReceived,
    TResult? Function(ProductNameChanged value)? productNameChanged,
    TResult? Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult? Function(AddProductPressed value)? addProductPressed,
  }) {
    return addProductPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchProductsStarted value)? watchProductsStarted,
    TResult Function(ProductsReceived value)? productsReceived,
    TResult Function(ProductNameChanged value)? productNameChanged,
    TResult Function(ProductImageFileChanged value)? productImageFileChanged,
    TResult Function(AddProductPressed value)? addProductPressed,
    required TResult orElse(),
  }) {
    if (addProductPressed != null) {
      return addProductPressed(this);
    }
    return orElse();
  }
}

abstract class AddProductPressed implements ProductsWatcherEvent {
  const factory AddProductPressed() = _$AddProductPressed;
}

/// @nodoc
mixin _$ProductsWatcherState {
  bool get inProgress => throw _privateConstructorUsedError;
  bool get isLoadingProducts => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, KtList<Product>>>
      get failureOrProductsOption => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  File? get productImageFile => throw _privateConstructorUsedError;
  Option<Either<FirebaseFailure, Product>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsWatcherStateCopyWith<ProductsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsWatcherStateCopyWith<$Res> {
  factory $ProductsWatcherStateCopyWith(ProductsWatcherState value,
          $Res Function(ProductsWatcherState) then) =
      _$ProductsWatcherStateCopyWithImpl<$Res, ProductsWatcherState>;
  @useResult
  $Res call(
      {bool inProgress,
      bool isLoadingProducts,
      Option<Either<FirebaseFailure, KtList<Product>>> failureOrProductsOption,
      String productName,
      File? productImageFile,
      Option<Either<FirebaseFailure, Product>> failureOrSuccessOption});
}

/// @nodoc
class _$ProductsWatcherStateCopyWithImpl<$Res,
        $Val extends ProductsWatcherState>
    implements $ProductsWatcherStateCopyWith<$Res> {
  _$ProductsWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? isLoadingProducts = null,
    Object? failureOrProductsOption = null,
    Object? productName = null,
    Object? productImageFile = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingProducts: null == isLoadingProducts
          ? _value.isLoadingProducts
          : isLoadingProducts // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrProductsOption: null == failureOrProductsOption
          ? _value.failureOrProductsOption
          : failureOrProductsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, KtList<Product>>>,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImageFile: freezed == productImageFile
          ? _value.productImageFile
          : productImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Product>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsWatcherStateCopyWith<$Res>
    implements $ProductsWatcherStateCopyWith<$Res> {
  factory _$$_ProductsWatcherStateCopyWith(_$_ProductsWatcherState value,
          $Res Function(_$_ProductsWatcherState) then) =
      __$$_ProductsWatcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool inProgress,
      bool isLoadingProducts,
      Option<Either<FirebaseFailure, KtList<Product>>> failureOrProductsOption,
      String productName,
      File? productImageFile,
      Option<Either<FirebaseFailure, Product>> failureOrSuccessOption});
}

/// @nodoc
class __$$_ProductsWatcherStateCopyWithImpl<$Res>
    extends _$ProductsWatcherStateCopyWithImpl<$Res, _$_ProductsWatcherState>
    implements _$$_ProductsWatcherStateCopyWith<$Res> {
  __$$_ProductsWatcherStateCopyWithImpl(_$_ProductsWatcherState _value,
      $Res Function(_$_ProductsWatcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inProgress = null,
    Object? isLoadingProducts = null,
    Object? failureOrProductsOption = null,
    Object? productName = null,
    Object? productImageFile = freezed,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_ProductsWatcherState(
      inProgress: null == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingProducts: null == isLoadingProducts
          ? _value.isLoadingProducts
          : isLoadingProducts // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrProductsOption: null == failureOrProductsOption
          ? _value.failureOrProductsOption
          : failureOrProductsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, KtList<Product>>>,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImageFile: freezed == productImageFile
          ? _value.productImageFile
          : productImageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFailure, Product>>,
    ));
  }
}

/// @nodoc

class _$_ProductsWatcherState implements _ProductsWatcherState {
  const _$_ProductsWatcherState(
      {required this.inProgress,
      required this.isLoadingProducts,
      required this.failureOrProductsOption,
      required this.productName,
      required this.productImageFile,
      required this.failureOrSuccessOption});

  @override
  final bool inProgress;
  @override
  final bool isLoadingProducts;
  @override
  final Option<Either<FirebaseFailure, KtList<Product>>>
      failureOrProductsOption;
  @override
  final String productName;
  @override
  final File? productImageFile;
  @override
  final Option<Either<FirebaseFailure, Product>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ProductsWatcherState(inProgress: $inProgress, isLoadingProducts: $isLoadingProducts, failureOrProductsOption: $failureOrProductsOption, productName: $productName, productImageFile: $productImageFile, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsWatcherState &&
            (identical(other.inProgress, inProgress) ||
                other.inProgress == inProgress) &&
            (identical(other.isLoadingProducts, isLoadingProducts) ||
                other.isLoadingProducts == isLoadingProducts) &&
            (identical(
                    other.failureOrProductsOption, failureOrProductsOption) ||
                other.failureOrProductsOption == failureOrProductsOption) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productImageFile, productImageFile) ||
                other.productImageFile == productImageFile) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      inProgress,
      isLoadingProducts,
      failureOrProductsOption,
      productName,
      productImageFile,
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsWatcherStateCopyWith<_$_ProductsWatcherState> get copyWith =>
      __$$_ProductsWatcherStateCopyWithImpl<_$_ProductsWatcherState>(
          this, _$identity);
}

abstract class _ProductsWatcherState implements ProductsWatcherState {
  const factory _ProductsWatcherState(
      {required final bool inProgress,
      required final bool isLoadingProducts,
      required final Option<Either<FirebaseFailure, KtList<Product>>>
          failureOrProductsOption,
      required final String productName,
      required final File? productImageFile,
      required final Option<Either<FirebaseFailure, Product>>
          failureOrSuccessOption}) = _$_ProductsWatcherState;

  @override
  bool get inProgress;
  @override
  bool get isLoadingProducts;
  @override
  Option<Either<FirebaseFailure, KtList<Product>>> get failureOrProductsOption;
  @override
  String get productName;
  @override
  File? get productImageFile;
  @override
  Option<Either<FirebaseFailure, Product>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsWatcherStateCopyWith<_$_ProductsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
