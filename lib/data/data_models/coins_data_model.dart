import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_data_model.freezed.dart';
part 'coins_data_model.g.dart';

@freezed
class CoinsDataModel with _$CoinsDataModel {
  const factory CoinsDataModel({
    required final List<Coin>? data,
  }) = _CoinsDataModel;

  factory CoinsDataModel.fromJson(final Map<String, dynamic> json) =>
      _$CoinsDataModelFromJson(json);
}

@freezed
class Coin with _$Coin {
  const factory Coin({
    required final String? base,
    required final String? quote,
    required final String? type,
    required final double? lastPrice,
    required final double? volume,
    required final String? symbol,
  }) = _Coin;

  factory Coin.fromJson(final Map<String, dynamic> json) =>
      _$CoinFromJson(json);
}
