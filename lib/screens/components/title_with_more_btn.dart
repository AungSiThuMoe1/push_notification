import 'package:flutter/material.dart';
import 'package:push_notification/screens/components/title_with_custom_underline.dart';

import '../../constants.dart';
class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(title: title,),
          Spacer(),
          FlatButton(onPressed: press,child: Text("More",
            style: TextStyle(color: Colors.white),),
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
            ,)
        ],
      ),
    );
  }
}