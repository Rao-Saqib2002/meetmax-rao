import 'package:flutter/material.dart';
import 'package:form_ui/kiosk_mode/kiosk3.dart';

class Kiosk2 extends StatefulWidget {
  const Kiosk2({super.key , required this.name});

  final String name;

  

  @override
  State<Kiosk2> createState() => _Kiosk2State();
}

class _Kiosk2State extends State<Kiosk2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Image(
                image: AssetImage('assets/kiosk2/rectangle.png'),
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.49,
                child: const Image(
                  image: AssetImage('assets/kiosk2/people.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.25,
                child: const Image(
                  image: AssetImage('assets/kiosk2/frame.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
                width: 130,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Kiosk3(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(255, 191, 143, 1),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/kiosk2/arrow-left.png'),
                        fit: BoxFit.contain,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Go Back",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
