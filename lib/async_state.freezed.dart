// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AsyncStateTearOff {
  const _$AsyncStateTearOff();

  AsyncStateInitial initial({String? type, String? display}) {
    return AsyncStateInitial(
      type: type,
      display: display,
    );
  }

  AsyncStateLoading loading({String? type, String? display}) {
    return AsyncStateLoading(
      type: type,
      display: display,
    );
  }

  AsyncStateData success(
      {String? type, String? display, List<dynamic> data = const []}) {
    return AsyncStateData(
      type: type,
      display: display,
      data: data,
    );
  }

  AsyncStateError error(
      {String? type,
      String? display,
      required Object error,
      StackTrace? stackTrace}) {
    return AsyncStateError(
      type: type,
      display: display,
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $AsyncState = _$AsyncStateTearOff();

/// @nodoc
mixin _$AsyncState {
  String? get type => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type, String? display) initial,
    required TResult Function(String? type, String? display) loading,
    required TResult Function(String? type, String? display, List<dynamic> data)
        success,
    required TResult Function(
            String? type, String? display, Object error, StackTrace? stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type, String? display)? initial,
    TResult Function(String? type, String? display)? loading,
    TResult Function(String? type, String? display, List<dynamic> data)?
        success,
    TResult Function(String? type, String? display, Object error,
            StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial value) initial,
    required TResult Function(AsyncStateLoading value) loading,
    required TResult Function(AsyncStateData value) success,
    required TResult Function(AsyncStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial value)? initial,
    TResult Function(AsyncStateLoading value)? loading,
    TResult Function(AsyncStateData value)? success,
    TResult Function(AsyncStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AsyncStateCopyWith<AsyncState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<$Res> {
  factory $AsyncStateCopyWith(
          AsyncState value, $Res Function(AsyncState) then) =
      _$AsyncStateCopyWithImpl<$Res>;
  $Res call({String? type, String? display});
}

/// @nodoc
class _$AsyncStateCopyWithImpl<$Res> implements $AsyncStateCopyWith<$Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  final AsyncState _value;
  // ignore: unused_field
  final $Res Function(AsyncState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $AsyncStateInitialCopyWith<$Res>
    implements $AsyncStateCopyWith<$Res> {
  factory $AsyncStateInitialCopyWith(
          AsyncStateInitial value, $Res Function(AsyncStateInitial) then) =
      _$AsyncStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? display});
}

/// @nodoc
class _$AsyncStateInitialCopyWithImpl<$Res>
    extends _$AsyncStateCopyWithImpl<$Res>
    implements $AsyncStateInitialCopyWith<$Res> {
  _$AsyncStateInitialCopyWithImpl(
      AsyncStateInitial _value, $Res Function(AsyncStateInitial) _then)
      : super(_value, (v) => _then(v as AsyncStateInitial));

  @override
  AsyncStateInitial get _value => super._value as AsyncStateInitial;

  @override
  $Res call({
    Object? type = freezed,
    Object? display = freezed,
  }) {
    return _then(AsyncStateInitial(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$AsyncStateInitial extends AsyncStateInitial {
  const _$AsyncStateInitial({this.type, this.display}) : super._();

  @override
  final String? type;
  @override
  final String? display;

  @override
  String toString() {
    return 'AsyncState.initial(type: $type, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AsyncStateInitial &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.display, display) ||
                const DeepCollectionEquality().equals(other.display, display)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(display);

  @JsonKey(ignore: true)
  @override
  $AsyncStateInitialCopyWith<AsyncStateInitial> get copyWith =>
      _$AsyncStateInitialCopyWithImpl<AsyncStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type, String? display) initial,
    required TResult Function(String? type, String? display) loading,
    required TResult Function(String? type, String? display, List<dynamic> data)
        success,
    required TResult Function(
            String? type, String? display, Object error, StackTrace? stackTrace)
        error,
  }) {
    return initial(type, display);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type, String? display)? initial,
    TResult Function(String? type, String? display)? loading,
    TResult Function(String? type, String? display, List<dynamic> data)?
        success,
    TResult Function(String? type, String? display, Object error,
            StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(type, display);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial value) initial,
    required TResult Function(AsyncStateLoading value) loading,
    required TResult Function(AsyncStateData value) success,
    required TResult Function(AsyncStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial value)? initial,
    TResult Function(AsyncStateLoading value)? loading,
    TResult Function(AsyncStateData value)? success,
    TResult Function(AsyncStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AsyncStateInitial extends AsyncState {
  const factory AsyncStateInitial({String? type, String? display}) =
      _$AsyncStateInitial;
  const AsyncStateInitial._() : super._();

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get display => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AsyncStateInitialCopyWith<AsyncStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateLoadingCopyWith<$Res>
    implements $AsyncStateCopyWith<$Res> {
  factory $AsyncStateLoadingCopyWith(
          AsyncStateLoading value, $Res Function(AsyncStateLoading) then) =
      _$AsyncStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? display});
}

/// @nodoc
class _$AsyncStateLoadingCopyWithImpl<$Res>
    extends _$AsyncStateCopyWithImpl<$Res>
    implements $AsyncStateLoadingCopyWith<$Res> {
  _$AsyncStateLoadingCopyWithImpl(
      AsyncStateLoading _value, $Res Function(AsyncStateLoading) _then)
      : super(_value, (v) => _then(v as AsyncStateLoading));

  @override
  AsyncStateLoading get _value => super._value as AsyncStateLoading;

  @override
  $Res call({
    Object? type = freezed,
    Object? display = freezed,
  }) {
    return _then(AsyncStateLoading(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$AsyncStateLoading extends AsyncStateLoading {
  const _$AsyncStateLoading({this.type, this.display}) : super._();

  @override
  final String? type;
  @override
  final String? display;

  @override
  String toString() {
    return 'AsyncState.loading(type: $type, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AsyncStateLoading &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.display, display) ||
                const DeepCollectionEquality().equals(other.display, display)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(display);

  @JsonKey(ignore: true)
  @override
  $AsyncStateLoadingCopyWith<AsyncStateLoading> get copyWith =>
      _$AsyncStateLoadingCopyWithImpl<AsyncStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type, String? display) initial,
    required TResult Function(String? type, String? display) loading,
    required TResult Function(String? type, String? display, List<dynamic> data)
        success,
    required TResult Function(
            String? type, String? display, Object error, StackTrace? stackTrace)
        error,
  }) {
    return loading(type, display);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type, String? display)? initial,
    TResult Function(String? type, String? display)? loading,
    TResult Function(String? type, String? display, List<dynamic> data)?
        success,
    TResult Function(String? type, String? display, Object error,
            StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(type, display);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial value) initial,
    required TResult Function(AsyncStateLoading value) loading,
    required TResult Function(AsyncStateData value) success,
    required TResult Function(AsyncStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial value)? initial,
    TResult Function(AsyncStateLoading value)? loading,
    TResult Function(AsyncStateData value)? success,
    TResult Function(AsyncStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncStateLoading extends AsyncState {
  const factory AsyncStateLoading({String? type, String? display}) =
      _$AsyncStateLoading;
  const AsyncStateLoading._() : super._();

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get display => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AsyncStateLoadingCopyWith<AsyncStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateDataCopyWith<$Res>
    implements $AsyncStateCopyWith<$Res> {
  factory $AsyncStateDataCopyWith(
          AsyncStateData value, $Res Function(AsyncStateData) then) =
      _$AsyncStateDataCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? display, List<dynamic> data});
}

/// @nodoc
class _$AsyncStateDataCopyWithImpl<$Res> extends _$AsyncStateCopyWithImpl<$Res>
    implements $AsyncStateDataCopyWith<$Res> {
  _$AsyncStateDataCopyWithImpl(
      AsyncStateData _value, $Res Function(AsyncStateData) _then)
      : super(_value, (v) => _then(v as AsyncStateData));

  @override
  AsyncStateData get _value => super._value as AsyncStateData;

  @override
  $Res call({
    Object? type = freezed,
    Object? display = freezed,
    Object? data = freezed,
  }) {
    return _then(AsyncStateData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
class _$AsyncStateData extends AsyncStateData {
  const _$AsyncStateData({this.type, this.display, this.data = const []})
      : super._();

  @override
  final String? type;
  @override
  final String? display;
  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> data;

  @override
  String toString() {
    return 'AsyncState.success(type: $type, display: $display, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AsyncStateData &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.display, display) ||
                const DeepCollectionEquality()
                    .equals(other.display, display)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(display) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $AsyncStateDataCopyWith<AsyncStateData> get copyWith =>
      _$AsyncStateDataCopyWithImpl<AsyncStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type, String? display) initial,
    required TResult Function(String? type, String? display) loading,
    required TResult Function(String? type, String? display, List<dynamic> data)
        success,
    required TResult Function(
            String? type, String? display, Object error, StackTrace? stackTrace)
        error,
  }) {
    return success(type, display, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type, String? display)? initial,
    TResult Function(String? type, String? display)? loading,
    TResult Function(String? type, String? display, List<dynamic> data)?
        success,
    TResult Function(String? type, String? display, Object error,
            StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(type, display, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial value) initial,
    required TResult Function(AsyncStateLoading value) loading,
    required TResult Function(AsyncStateData value) success,
    required TResult Function(AsyncStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial value)? initial,
    TResult Function(AsyncStateLoading value)? loading,
    TResult Function(AsyncStateData value)? success,
    TResult Function(AsyncStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AsyncStateData extends AsyncState {
  const factory AsyncStateData(
      {String? type, String? display, List<dynamic> data}) = _$AsyncStateData;
  const AsyncStateData._() : super._();

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get display => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AsyncStateDataCopyWith<AsyncStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateErrorCopyWith<$Res>
    implements $AsyncStateCopyWith<$Res> {
  factory $AsyncStateErrorCopyWith(
          AsyncStateError value, $Res Function(AsyncStateError) then) =
      _$AsyncStateErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? type, String? display, Object error, StackTrace? stackTrace});
}

/// @nodoc
class _$AsyncStateErrorCopyWithImpl<$Res> extends _$AsyncStateCopyWithImpl<$Res>
    implements $AsyncStateErrorCopyWith<$Res> {
  _$AsyncStateErrorCopyWithImpl(
      AsyncStateError _value, $Res Function(AsyncStateError) _then)
      : super(_value, (v) => _then(v as AsyncStateError));

  @override
  AsyncStateError get _value => super._value as AsyncStateError;

  @override
  $Res call({
    Object? type = freezed,
    Object? display = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AsyncStateError(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
class _$AsyncStateError extends AsyncStateError {
  const _$AsyncStateError(
      {this.type, this.display, required this.error, this.stackTrace})
      : super._();

  @override
  final String? type;
  @override
  final String? display;
  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AsyncState.error(type: $type, display: $display, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AsyncStateError &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.display, display) ||
                const DeepCollectionEquality()
                    .equals(other.display, display)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality()
                    .equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(display) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $AsyncStateErrorCopyWith<AsyncStateError> get copyWith =>
      _$AsyncStateErrorCopyWithImpl<AsyncStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type, String? display) initial,
    required TResult Function(String? type, String? display) loading,
    required TResult Function(String? type, String? display, List<dynamic> data)
        success,
    required TResult Function(
            String? type, String? display, Object error, StackTrace? stackTrace)
        error,
  }) {
    return error(type, display, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type, String? display)? initial,
    TResult Function(String? type, String? display)? loading,
    TResult Function(String? type, String? display, List<dynamic> data)?
        success,
    TResult Function(String? type, String? display, Object error,
            StackTrace? stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(type, display, this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncStateInitial value) initial,
    required TResult Function(AsyncStateLoading value) loading,
    required TResult Function(AsyncStateData value) success,
    required TResult Function(AsyncStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncStateInitial value)? initial,
    TResult Function(AsyncStateLoading value)? loading,
    TResult Function(AsyncStateData value)? success,
    TResult Function(AsyncStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AsyncStateError extends AsyncState {
  const factory AsyncStateError(
      {String? type,
      String? display,
      required Object error,
      StackTrace? stackTrace}) = _$AsyncStateError;
  const AsyncStateError._() : super._();

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get display => throw _privateConstructorUsedError;
  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AsyncStateErrorCopyWith<AsyncStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
