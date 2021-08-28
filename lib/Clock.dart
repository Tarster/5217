import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pompom/Custom_text_widget.dart';

class ClockView extends StatefulWidget {
  //const ClockView({Key? key}) : super(key: key);

  @override
  _ClockViewState createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 8.0, right: 8.0, top: 180, bottom: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomText(text: '5'),
              CustomText(text: '2'),
              SizedBox(
                width: 15,
              ),
              Column(
                children: <Widget>[
                  _customCircle(),
                  SizedBox(
                    height: 15,
                  ),
                  _customCircle(),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              CustomText(text: '1'),
              CustomText(text: '7'),
            ],
          ),
        ),

        //Button UI STARTS FROM HERE
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _clickableButton(),
            SizedBox(width: 100,),
            _clickableButton(),
          ],
        )
      ],
    );
  }

  Widget _customCircle() {
    return Container(
      width: 21.0,
      height: 21.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _clickableButton() {
    return ClipOval(
      child: Material(
        color: Color(0xFFF17899), // Button color
        child: InkWell(
          splashColor: Color(0xFFEEC8DE), // Splash color
          onTap: () {},
          child: SizedBox(
            width: 75,
            height: 75,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
