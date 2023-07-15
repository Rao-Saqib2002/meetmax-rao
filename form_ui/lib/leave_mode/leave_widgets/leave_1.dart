import 'package:flutter/material.dart';

class LeaveFirst extends StatefulWidget {
  const LeaveFirst({super.key});

  @override
  State<LeaveFirst> createState() => _LeaveFirstState();
}

class _LeaveFirstState extends State<LeaveFirst> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
