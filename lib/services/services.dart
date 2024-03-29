import 'package:chatgpt/constant/constant.dart';
import 'package:flutter/material.dart';
import '../constant/text_widget.dart';
import '../widgets/drop_down.dart';

class Services {
  static Future < void> showModalSheet({required BuildContext context}) async{

    await showModalBottomSheet( 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20))
                  ),
                  backgroundColor: scaffoldBackgroundColor ,
                  context: context, 
                  builder: (context) {
                  return Padding(
                   
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                      Flexible(child: TextWidget(label: "Chosen Model:",
                      fontSize: 16)),

                      Flexible(
                        flex: 2,
                        child: DropDown()),
                    ],
                    ),
                  );
                });



  }
}