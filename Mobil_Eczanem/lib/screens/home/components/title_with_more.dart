import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../constants.dart';
import '../../details/screen_details.dart';
import '../more_screen.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: uPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(), // ürünler ve daha fazlayı ekranın iki ucuna ayarlıyor
          TextButton(
            // FlatButton new name
            onPressed: (){
              Navigator.pushReplacement(context, PageTransition(child: MoreScreen(), type: PageTransitionType.leftToRightWithFade));},
            style: TextButton.styleFrom(
              backgroundColor: uThemaColor, // Background Color
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: const Text(
              'Daha Fazla',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: uPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: uPadding / 4),
              height: 7,
              color: uThemaColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
