import 'package:flutter/material.dart';
import 'package:woo_network_assessment/app/messages/app_messages.dart';
import 'package:woo_network_assessment/app/messages/printers.dart';
import 'package:woo_network_assessment/app/resources/app_colors.dart';
import 'package:woo_network_assessment/app/resources/app_spacing.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';
import 'package:woo_network_assessment/app/extentions/double_extention.dart';

class APPCurrencyItemCard extends StatefulWidget{
  const APPCurrencyItemCard({Key? key, required this.coin, required this.type}) : super(key: key);

  final Coin coin;
  final String type;

  @override
  APPCurrencyItemCardState createState() {
    return APPCurrencyItemCardState();
  }

}
class APPCurrencyItemCardState extends State<APPCurrencyItemCard>
{
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.paper,
      child: Column(children: [
        Align(child: Padding(
          padding: AppSpacing.s8Left8Top,
          child: Text('${AppMessage.SYMBOL}:${typeChecker(widget.coin)}'),
        ),alignment: Alignment.centerLeft),
        Align(child: Padding(
          padding: AppSpacing.s8Right8Bottom,
          child: Text('${AppMessage.LASTPRICE}: \$ ${widget.coin.lastPrice.currencyGenerator()}'),
        ),alignment: Alignment.centerRight),
        Align(child: Padding(
          padding: AppSpacing.s8Right8Bottom,
          child: Text('${AppMessage.VOLUME}: \$${widget.coin.lastPrice.formatGenerator()}'),
        ),alignment: Alignment.centerRight),
      ]),
    );
  }

   typeChecker(Coin coin)
  {
    if(coin.type=='SPOT')
      {
        return '${coin.base}/${coin.quote}';
      }else if(coin.type=='FUTURES')
        {
          return '${coin.base}/PERP';
        }
  }



}