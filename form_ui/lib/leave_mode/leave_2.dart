import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

var officeName = ["Vacation", "Casual", "Sick Leave"];
var date = ["23 days remaining", "23 days remaining", "23 days remaining"];

class Leave2 extends StatefulWidget {
  const Leave2({super.key});

  @override
  State<Leave2> createState() => _Leave2State();
}

Color? defaultColornull = const Color.fromRGBO(255, 191, 143, 1);
Color defaultColor = const Color.fromRGBO(255, 191, 143, 1);

class _Leave2State extends State<Leave2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              //color: const Color.fromRGBO(65, 35, 61, 1),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          //padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: BlurryContainer(
                            blur: 5,
                            borderRadius: BorderRadius.circular(30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(color: Color.fromRGBO(255, 191, 143, 1), width: 2),
                                            ),
                                          ),
                                          margin: const EdgeInsets.only(bottom: 20),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: SizedBox(
                                                  height: 30,
                                                  width: 30,
                                                  child: Image(
                                                    image: AssetImage('assets/kiosk_mode/kiosk1/arrow-left.png'),
                                                    color: Color.fromRGBO(255, 191, 143, 1),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 35, top: 5),
                                                  child: Text(
                                                    "Add new request",
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(255, 191, 143, 1),
                                                      fontSize: 21,
                                                      //fontWeight: FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: SizedBox(
                                      height: 30,
                                      child: Text(
                                        "What type of vacation do you want",
                                        style: TextStyle(color: Colors.white , fontSize: 17),
                                        textAlign: TextAlign.center,
                                        
                                      )),
                                ),
                                Expanded(
                                  flex: 15,
                                  child: ListView.builder(
                                    itemCount: officeName.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return listViewCont(
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                            backgroundColor: MaterialStatePropertyAll(
                                              Color.fromRGBO(0, 0, 0, 0),
                                            ),
                                            elevation: MaterialStatePropertyAll(0),
                                          ),
                                          child: listViewComp(officeName[index], context, index),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}

Row listViewComp(String text, BuildContext context, int index) {
  return (Row(
    children: [
      Expanded(
        child: Container(
          //padding: const EdgeInsets.only(left: 10),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    date[index],
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                    //textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: const EdgeInsets.only(right: 10),
              height: 30,
              width: 30,
              child: Image(
                image: const AssetImage("assets/kiosk_mode/kiosk1/arrow-circle-right.png"),
                fit: BoxFit.contain,
                color: defaultColornull,
              )),
        ),
      )
    ],
  ));
}

Container listViewCont(ElevatedButton button) {
  return Container(
    margin: const EdgeInsets.only(top: 0, bottom: 15, left: 10, right: 10),
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.3),
    ),
    child: button,
  );
}
