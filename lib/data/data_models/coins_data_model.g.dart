// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinsDataModel _$$_CoinsDataModelFromJson(Map<String, dynamic> json) =>
    _$_CoinsDataModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Coin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CoinsDataModelToJson(_$_CoinsDataModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Coin _$$_CoinFromJson(Map<String, dynamic> json) => _$_Coin(
      base: json['base'] as String?,
      quote: json['quote'] as String?,
      type: json['type'] as String?,
      lastPrice: (json['lastPrice'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$$_CoinToJson(_$_Coin instance) => <String, dynamic>{
      'base': instance.base,
      'quote': instance.quote,
      'type': instance.type,
      'lastPrice': instance.lastPrice,
      'volume': instance.volume,
      'symbol': instance.symbol,
    };
