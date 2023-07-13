import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:form_ui/kiosk_mode/kiosk1.dart';

class Kiosk extends StatefulWidget {
  const Kiosk({super.key});

  @override
  State<Kiosk> createState() => _KioskState();
}

class _KioskState extends State<Kiosk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Image(
              image: AssetImage('assets/kiosk/rectangle.png'),
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: BlurryContainer(
                borderRadius: BorderRadius.circular(40),
                blur: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.height * 0.06,
                        child: const Image(
                          image: AssetImage("assets/kiosk/scan-barcode.png"),
                          //fit: BoxFit.contain,
                          color: Color.fromRGBO(255, 191, 143, 1),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Kiosk Mode",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: Text(
                        "The kiosk mode allows you to use your MeetMax app as a kiosk where employees can check-in and check-outa. You need to enable image capturing in attendance configuration to kiosk mode",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(0, 0, 0, 0),
                                ),
                                elevation: MaterialStatePropertyAll(0),
                              ),
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Kiosk1(),
                                  ),
                                );
                              },
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 191, 143, 1)),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))))),
                              child: const Text(
                                "Continue",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
