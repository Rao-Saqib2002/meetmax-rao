import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class Kiosk3 extends StatefulWidget {
  const Kiosk3({super.key});

  @override
  State<Kiosk3> createState() => _Kiosk3State();
}

class _Kiosk3State extends State<Kiosk3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Image(
              image: AssetImage('assets/kiosk3/rectangle.png'),
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width * 0.85,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.withOpacity(0.3),
              ),
              child: BlurryContainer(
                borderRadius: BorderRadius.circular(40),
                blur: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Please enter password to go back",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only( bottom: 10),
                      child: TextField(
                        autocorrect: true,
                        obscureText: true,
                        cursorColor: Colors.white,
                        
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                    
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),
                    
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                    
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromRGBO(255, 191, 143, 1),
                            size: 22,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                            size: 22,
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    //onst SizedBox(height: 20),
                    Row(
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
                            onPressed: () {},
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
