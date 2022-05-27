import 'package:flutter/cupertino.dart';
import 'package:woo_network_assessment/app/messages/app_messages.dart';
import 'package:woo_network_assessment/app/resources/app_size.dart';
import 'package:woo_network_assessment/app/resources/app_text_style.dart';

class APPHeaderSection extends StatefulWidget {
  const APPHeaderSection({Key? key, required this.selectedFunction})
      : super(key: key);

  final Function(int, String selected) selectedFunction;

  @override
  APPHeaderSectionState createState() {
    return APPHeaderSectionState();
  }
}

class APPHeaderSectionState extends State<APPHeaderSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s50,
      child: Row(
        children: [
          Flexible(
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                      child: Text(AppMessage.symbol,
                          style: AppTextStyles.bodyText1)))),
          Flexible(
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                      child: Text(AppMessage.symbol,
                          style: AppTextStyles.bodyText1)))),
          Flexible(
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                      child: Text(AppMessage.symbol,
                          style: AppTextStyles.bodyText1)))),
        ],
      ),
    );
  }
}
