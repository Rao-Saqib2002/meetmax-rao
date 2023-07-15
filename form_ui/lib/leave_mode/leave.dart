import 'package:flutter/material.dart';
import 'package:form_ui/leave_mode/leave_widgets/leave_1.dart';
import 'package:form_ui/leave_mode/leave_widgets/leave_2.dart';
import 'package:form_ui/leave_mode/leave_widgets/leave_3.dart';

class Leave extends StatefulWidget {
  const Leave({super.key});

  @override
  State<Leave> createState() => _LeaveState();
}

BoxDecoration blackBorder() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 1,
    ),
  );
}

var defaultColor = const Color.fromRGBO(255, 191, 143, 1);

class _LeaveState extends State<Leave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(40, 10, 48, 1),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  //transform: Matrix4.translationValues(0, -50, 0),
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/kiosk_mode/kiosk1/circle.png'), fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                child: Container(
                  height: 200,
                  width: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/kiosk_mode/kiosk1/greentri.png'), fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                child: Container(
                  height: 400,
                  width: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/kiosk_mode/kiosk1/bluetri.png'), fit: BoxFit.fill),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),

                              LeaveFirst(),

                              SizedBox(height: 30),

                              LeaveSecond(),

                              SizedBox(height: 10),

                              LeaveThird(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row listViewComp(String text, BuildContext context, int index) {
  return (Row(
    children: [
      SizedBox(
        height: 25,
        width: 25,
        child: Image(
          image: AssetImage('assets/setting_mode/feedback/feedback$index.png'),
          fit: BoxFit.contain,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: const EdgeInsets.only(right: 10),
              height: 30,
              width: 30,
              child: const Image(
                image: AssetImage("assets/kiosk_mode/kiosk1/arrow-circle-right.png"),
                fit: BoxFit.contain,
                color: Colors.grey,
              )),
        ),
      )
    ],
  ));
}

Container listViewCont(ElevatedButton button) {
  return Container(
    margin: const EdgeInsets.only(top: 0, bottom: 15, left: 10, right: 10),
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.3),
    ),
    child: button,
  );
}
