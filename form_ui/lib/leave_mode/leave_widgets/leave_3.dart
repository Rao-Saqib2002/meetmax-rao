import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class LeaveThird extends StatefulWidget {
  const LeaveThird({super.key});

  @override
  State<LeaveThird> createState() => _LeaveThirdState();
}

class _LeaveThirdState extends State<LeaveThird> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.080,
          //margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color.fromARGB(255, 21, 0, 19), border: Border.all(color: const Color.fromARGB(255, 78, 4, 71), width: 3)),
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
    );
  }
}
