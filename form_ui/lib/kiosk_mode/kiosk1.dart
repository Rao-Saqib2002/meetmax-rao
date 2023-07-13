import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:form_ui/kiosk_mode/kiosk2.dart';

class Kiosk1 extends StatefulWidget {
  const Kiosk1({super.key});

  @override
  State<Kiosk1> createState() => _Kiosk1State();
}

var officeName = ["Plan Z Creative", "Plan Z Web", "Plan Z Dev"];

class _Kiosk1State extends State<Kiosk1> {
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
                  image: DecorationImage(image: AssetImage('assets/kiosk1/circle.png'), fit: BoxFit.fill),
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
                  image: DecorationImage(image: AssetImage('assets/kiosk1/greentri.png'), fit: BoxFit.fill),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              child: Container(
                height: 400,
                width: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/kiosk1/bluetri.png'), fit: BoxFit.fill),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              //color: const Color.fromRGBO(65, 35, 61, 1),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image(
                                image: AssetImage('assets/kiosk1/hamburgermenu.png'),
                                fit: BoxFit.contain,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 13,
                        child: Container(
                          padding: const EdgeInsets.all(10),
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
                                      const Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 5.0),
                                              child: SizedBox(
                                                height: 30,
                                                width: 30,
                                                child: Image(
                                                  image: AssetImage('assets/kiosk1/arrow-left.png'),
                                                  color: Color.fromRGBO(255, 191, 143, 1),
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(right: 35),
                                                child: Text(
                                                  "Kiosk Mode",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(255, 191, 143, 1),
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              top: BorderSide(color: Color.fromRGBO(255, 191, 143, 1), width: 3),
                                            ),
                                            //color: Colors.purple.shade100,
                                          ),
                                          child: const SizedBox(
                                            width: double.infinity,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 20),
                                              child: Text(
                                                "Select Office",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: ListView.builder(
                                      
                                      itemCount: officeName.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return listViewCont(
                                           ElevatedButton(
                                            
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Kiosk2(name: officeName[index] ,),
                                                ),
                                              );
                                            },
                                            style: const ButtonStyle(
                                              backgroundColor: MaterialStatePropertyAll(
                                                Color.fromRGBO(0, 0, 0, 0),
                                              ),
                                              elevation: MaterialStatePropertyAll(0),
                                            ),
                                            child: listViewComp(officeName[index], context),
                                          ),
                                        );
                                      },
                                    ),
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

Row listViewComp(String text, BuildContext context) {
  return (Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: const EdgeInsets.only(right: 10),
              height: 35,
              width: 35,
              child: const Image(
                image: AssetImage("assets/kiosk1/arrow-circle-right.png"),
                fit: BoxFit.contain,
              )),
        ),
      )
    ],
  ));
}

Container listViewCont(ElevatedButton button) {
  return Container(
    margin: const EdgeInsets.only(top: 10, bottom: 10),
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.3),
    ),
    child: button,
  );
}
