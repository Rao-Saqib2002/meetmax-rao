import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

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
          color: Color.fromRGBO(40, 10, 48 , 1),
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
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.07,
                                child: const SizedBox.expand(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image(
                                            image: AssetImage("assets/leave_mode/menu.png"),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Leave",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              //fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: 35,
                                          width: 35,
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Image(
                                              image: AssetImage("assets/leave_mode/circleplus.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: BlurryContainer(
                                  blur: 20,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(color: Colors.white.withOpacity(0.3), width: 1),
                                            ),
                                          ),
                                          padding: const EdgeInsets.only(bottom: 10),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 10, top: 5),
                                                  child: Text(
                                                    "Pending Leave Request",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      //fontWeight: FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10, top: 5),
                                                child: SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: Image(
                                                    image: AssetImage('assets/leave_mode/arrow-up.png'),
                                                    color: Color.fromRGBO(255, 191, 143, 1),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          //color: Colors.lightBlue,
                                          child: Column(
                                            children: [
                                              const Expanded(
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child: Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Image(
                                                          image: AssetImage('assets/leave_mode/frame1.png'),
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 10),
                                                      child: Text(
                                                        "Sledge Hammer",
                                                        style: TextStyle(color: Colors.white, fontSize: 16),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Align(
                                                        alignment: Alignment.centerRight,
                                                        child: Text(
                                                          "#013043",
                                                          style: TextStyle(color: Colors.white, fontSize: 10),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 6,
                                                child: BlurryContainer(
                                                  blur: 5,
                                                  child: Container(
                                                    padding: const EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: const Color.fromRGBO(75, 58, 74, 0.8),
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 40,
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(top: 5, bottom: 10),
                                                            child: Text(
                                                              "Sick Leave",
                                                              style: TextStyle(
                                                                color: defaultColor,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const Expanded(
                                                          child: Text(
                                                            "4 Jan 2023 - 4 Feb 2023",
                                                            style: TextStyle(fontSize: 12, color: Colors.white),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            width: double.infinity,
                                                            decoration: BoxDecoration(
                                                              border: Border(
                                                                bottom: BorderSide(color: Colors.white.withOpacity(0.3), width: 1),
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              "4 days",
                                                              style: TextStyle(fontSize: 12, color: Colors.white),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                        ),
                                                        const Expanded(
                                                          child: Padding(
                                                            padding: EdgeInsets.only(top: 5.0),
                                                            child: Text(
                                                              "Reason",
                                                              style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            width: double.infinity,
                                                            decoration: BoxDecoration(
                                                              border: Border(
                                                                bottom: BorderSide(color: Colors.white.withOpacity(0.3), width: 1),
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              "Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                                              style: TextStyle(fontSize: 10, color: Colors.white),
                                                              textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 2,
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              const Expanded(
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    Image(
                                                                      image: AssetImage("assets/leave_mode/tick-circle.png"),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(left: 5.0),
                                                                      child: Text(
                                                                        "Accept",
                                                                        style: TextStyle(color: Colors.white, fontSize: 15),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: const EdgeInsets.only(top: 10, bottom: 5),
                                                                decoration: BoxDecoration(
                                                                  border: Border(
                                                                    left: BorderSide(color: Colors.white.withOpacity(0.3), width: 1),
                                                                  ),
                                                                ),
                                                              ),
                                                              const Expanded(
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                  children: [
                                                                    Image(
                                                                      image: AssetImage("assets/leave_mode/close-circle.png"),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(left: 5.0),
                                                                      child: Text(
                                                                        "Reject",
                                                                        style: TextStyle(color: Colors.white, fontSize: 15),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Expanded(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "View More",
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(255, 191, 143, 1),
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 10),
                                                      child: Image(
                                                        image: AssetImage("assets/leave_mode/arrow-right.png"),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Container(
                              //   height: MediaQuery.of(context).size.height * 0.425,
                              //   decoration: BoxDecoration(
                              //     color: Colors.black.withOpacity(0.3),
                              //     borderRadius: BorderRadius.circular(30),
                              //   ),
                              //   child: BlurryContainer(
                              //     blur: 5,
                              //     child: Column(
                              //       children: [
                              //         Expanded(
                              //           child: Container(
                              //             decoration: const BoxDecoration(
                              //               border: Border(
                              //                 bottom: BorderSide(color: Color.fromRGBO(255, 191, 143, 1), width: 2),
                              //               ),
                              //             ),
                              //             padding: const EdgeInsets.only(bottom: 10),
                              //             child: const Row(
                              //               mainAxisAlignment: MainAxisAlignment.center,
                              //               crossAxisAlignment: CrossAxisAlignment.center,
                              //               children: [
                              //                 Padding(
                              //                   padding: EdgeInsets.only(left: 10),
                              //                   child: SizedBox(
                              //                     height: 30,
                              //                     width: 30,
                              //                     child: Image(
                              //                       image: AssetImage('assets/kiosk_mode/kiosk1/arrow-left.png'),
                              //                       color: Color.fromRGBO(255, 191, 143, 1),
                              //                       fit: BoxFit.contain,
                              //                     ),
                              //                   ),
                              //                 ),
                              //                 Expanded(
                              //                   child: Padding(
                              //                     padding: EdgeInsets.only(right: 35, top: 5),
                              //                     child: Text(
                              //                       "Feedback",
                              //                       style: TextStyle(
                              //                         color: Color.fromRGBO(255, 191, 143, 1),
                              //                         fontSize: 19,
                              //                         //fontWeight: FontWeight.bold,
                              //                       ),
                              //                       textAlign: TextAlign.center,
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //         ),
                              //         Expanded(
                              //           flex: 6,
                              //           child: Container(
                              //             color: Colors.lightBlue,
                              //           ),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * 0.080,
                                    //margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromARGB(255, 21, 0, 19),
                                        border: Border.all(color: const Color.fromARGB(255, 78, 4, 71), width: 3)),
                                    child: BlurryContainer(
                                      borderRadius: BorderRadius.circular(50),
                                      blur: 5,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.withOpacity(0.4),
                                              ),
                                              child: Image.asset(
                                                'assets/leave_mode/shift.png',
                                                width: 40,
                                                height: 40,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              padding: EdgeInsets.zero,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(50),
                                                border: Border.all(
                                                  width: 2,
                                                  color: const Color.fromRGBO(246, 203, 169, 1),
                                                ),
                                              ),
                                              child: BlurryContainer(
                                                blur: 5,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: const ButtonStyle(
                                                    backgroundColor: MaterialStatePropertyAll(
                                                      Color.fromRGBO(0, 0, 0, 0),
                                                    ),
                                                    elevation: MaterialStatePropertyAll(0),
                                                    padding: MaterialStatePropertyAll(EdgeInsets.zero),
                                                    minimumSize: MaterialStatePropertyAll(Size.zero),
                                                  ),
                                                  child: const Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Image(
                                                        image: AssetImage('assets/leave_mode/leave.png'),
                                                        fit: BoxFit.contain,
                                                        color: Color.fromRGBO(246, 203, 169, 1),
                                                        
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 5),
                                                        child: Text(
                                                          "Leave",
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(246, 203, 169, 1),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.withOpacity(0.4),
                                              ),
                                              child: Image.asset(
                                                'assets/leave_mode/home.png',
                                                width: 20,
                                                height: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), shape: BoxShape.circle),
                                              child: Image.asset(
                                                'assets/leave_mode/clipboard-text.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              //margin: const EdgeInsets.only(left: 25, right: 25),
                                              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), shape: BoxShape.circle),
                                              child: Image.asset(
                                                'assets/leave_mode/clipboard.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
