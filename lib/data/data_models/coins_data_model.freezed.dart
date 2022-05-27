// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coins_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinsDataModel _$CoinsDataModelFromJson(Map<String, dynamic> json) {
  return _CoinsDataModel.fromJson(json);
}

/// @nodoc
mixin _$CoinsDataModel {
  List<Coin>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsDataModelCopyWith<CoinsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsDataModelCopyWith<$Res> {
  factory $CoinsDataModelCopyWith(
          CoinsDataModel value, $Res Function(CoinsDataModel) then) =
      _$CoinsDataModelCopyWithImpl<$Res>;
  $Res call({List<Coin>? data});
}

/// @nodoc
class _$CoinsDataModelCopyWithImpl<$Res>
    implements $CoinsDataModelCopyWith<$Res> {
  _$CoinsDataModelCopyWithImpl(this._value, this._then);

  final CoinsDataModel _value;
  // ignore: unused_field
  final $Res Function(CoinsDataModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Coin>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoinsDataModelCopyWith<$Res>
    implements $CoinsDataModelCopyWith<$Res> {
  factory _$$_CoinsDataModelCopyWith(
          _$_CoinsDataModel value, $Res Function(_$_CoinsDataModel) then) =
      __$$_CoinsDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Coin>? data});
}

/// @nodoc
class __$$_CoinsDataModelCopyWithImpl<$Res>
    extends _$CoinsDataModelCopyWithImpl<$Res>
    implements _$$_CoinsDataModelCopyWith<$Res> {
  __$$_CoinsDataModelCopyWithImpl(
      _$_CoinsDataModel _value, $Res Function(_$_CoinsDataModel) _then)
      : super(_value, (v) => _then(v as _$_CoinsDataModel));

  @override
  _$_CoinsDataModel get _value => super._value as _$_CoinsDataModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CoinsDataModel(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Coin>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinsDataModel implements _CoinsDataModel {
  const _$_CoinsDataModel({required final List<Coin>? data}) : _data = data;

  factory _$_CoinsDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoinsDataModelFromJson(json);

  final List<Coin>? _data;
  @override
  List<Coin>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoinsDataModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsDataModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CoinsDataModelCopyWith<_$_CoinsDataModel> get copyWith =>
      __$$_CoinsDataModelCopyWithImpl<_$_CoinsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinsDataModelToJson(this);
  }
}

abstract class _CoinsDataModel implements CoinsDataModel {
  const factory _CoinsDataModel({required final List<Coin>? data}) =
      _$_CoinsDataModel;

  factory _CoinsDataModel.fromJson(Map<String, dynamic> json) =
      _$_CoinsDataModel.fromJson;

  @override
  List<Coin>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CoinsDataModelCopyWith<_$_CoinsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return _Coin.fromJson(json);
}

/// @nodoc
mixin _$Coin {
  String? get base => throw _privateConstructorUsedError;
  String? get quote => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  double? get lastPrice => throw _privateConstructorUsedError;
  double? get volume => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res>;
  $Res call(
      {String? base,
      String? quote,
      String? type,
      double? lastPrice,
      double? volume,
      String? symbol});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res> implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  final Coin _value;
  // ignore: unused_field
  final $Res Function(Coin) _then;

  @override
  $Res call({
    Object? base = freezed,
    Object? quote = freezed,
    Object? type = freezed,
    Object? lastPrice = freezed,
    Object? volume = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoinCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$$_CoinCopyWith(_$_Coin value, $Res Function(_$_Coin) then) =
      __$$_CoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? base,
      String? quote,
      String? type,
      double? lastPrice,
      double? volume,
      String? symbol});
}

/// @nodoc
class __$$_CoinCopyWithImpl<$Res> extends _$CoinCopyWithImpl<$Res>
    implements _$$_CoinCopyWith<$Res> {
  __$$_CoinCopyWithImpl(_$_Coin _value, $Res Function(_$_Coin) _then)
      : super(_value, (v) => _then(v as _$_Coin));

  @override
  _$_Coin get _value => super._value as _$_Coin;

  @override
  $Res call({
    Object? base = freezed,
    Object? quote = freezed,
    Object? type = freezed,
    Object? lastPrice = freezed,
    Object? volume = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$_Coin(
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coin implements _Coin {
  const _$_Coin(
      {required this.base,
      required this.quote,
      required this.type,
      required this.lastPrice,
      required this.volume,
      required this.symbol});

  factory _$_Coin.fromJson(Map<String, dynamic> json) => _$$_CoinFromJson(json);

  @override
  final String? base;
  @override
  final String? quote;
  @override
  final String? type;
  @override
  final double? lastPrice;
  @override
  final double? volume;
  @override
  final String? symbol;

  @override
  String toString() {
    return 'Coin(base: $base, quote: $quote, type: $type, lastPrice: $lastPrice, volume: $volume, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coin &&
            const DeepCollectionEquality().equals(other.base, base) &&
            const DeepCollectionEquality().equals(other.quote, quote) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.lastPrice, lastPrice) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.symbol, symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(base),
      const DeepCollectionEquality().hash(quote),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(lastPrice),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(symbol));

  @JsonKey(ignore: true)
  @override
  _$$_CoinCopyWith<_$_Coin> get copyWith =>
      __$$_CoinCopyWithImpl<_$_Coin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinToJson(this);
  }
}

abstract class _Coin implements Coin {
  const factory _Coin(
      {required final String? base,
      required final String? quote,
      required final String? type,
      required final double? lastPrice,
      required final double? volume,
      required final String? symbol}) = _$_Coin;

  factory _Coin.fromJson(Map<String, dynamic> json) = _$_Coin.fromJson;

  @override
  String? get base => throw _privateConstructorUsedError;
  @override
  String? get quote => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  double? get lastPrice => throw _privateConstructorUsedError;
  @override
  double? get volume => throw _privateConstructorUsedError;
  @override
  String? get symbol => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CoinCopyWith<_$_Coin> get copyWith => throw _privateConstructorUsedError;
}
