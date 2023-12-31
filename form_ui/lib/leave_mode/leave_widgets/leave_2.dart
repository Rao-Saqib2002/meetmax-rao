import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class LeaveSecond extends StatefulWidget {
  const LeaveSecond({super.key});

  @override
  State<LeaveSecond> createState() => _LeaveSecondState();
}

var defaultColor = const Color.fromRGBO(255, 191, 143, 1);

class _LeaveSecondState extends State<LeaveSecond> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
