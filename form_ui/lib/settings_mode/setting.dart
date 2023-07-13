import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

var officeName = ["Notification", "Feedback", "Legal Information", "Switch Branch"];
var officeBools = [true, true, true, false];

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(65, 35, 61, 1),
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
                                                    "Settings",
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
                                          index);
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: listViewCont(
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: const ButtonStyle(
                                          backgroundColor: MaterialStatePropertyAll(
                                            Color.fromRGBO(0, 0, 0, 0),
                                          ),
                                          elevation: MaterialStatePropertyAll(0),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(right: 10),
                                              child: SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Image(
                                                  image: AssetImage("assets/setting_mode/setting/logout.png"),
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Logout",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      0),
                                )
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
      SizedBox(
        height: 25,
        width: 25,
        child: Image(
          image: AssetImage("assets/setting_mode/setting/setting$index.png"),
          fit: BoxFit.contain,
        ),
      ),
      if (officeBools[index] == false) ...[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  "Test Restaurant 2",
                  style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ] else ...[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
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

Container listViewCont(ElevatedButton button, int index) {
  return Container(
    margin: const EdgeInsets.only(top: 0, bottom: 15, right: 10, left: 10),
    height: officeBools[index] ? 60 : 80,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.3),
    ),
    child: button,
  );
}
