import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:form_ui/kiosk_mode/kiosk.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(38, 10, 48, 1),
        child: Center(
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 200,
                  width: 230,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/manager/People.png'), fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                top: 350,
                left: 0,
                child: Container(
                  height: 350,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/manager/Component1.png'), fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                // bottom: 50,

                child: Container(
                  height: 400,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/manager/Component2.png'), fit: BoxFit.fill),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 30),
                          child: Image(image: AssetImage('assets/home/menu.png'), fit: BoxFit.contain),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                              const Text(
                                "Hi, Lenz",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: AutofillHints.familyName,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black.withOpacity(0.1)),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.notifications_outlined,
                                      size: 30,
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage('assets/manager/Profile_pic.png'), fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, top: 35, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(102, 47, 45, 47),
                      ),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(30),
                        blur: 7,
                        child: Column(
                          children: <Widget>[
                            const Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "Employee Attendance",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(246, 203, 169, 1)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: BlurryContainer(
                                blur: 5,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                  child: Column(
                                    children: [
                                      const Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                              color: Color.fromRGBO(246, 203, 169, 1),
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          height: 20,
                                          width: 80,
                                          child: Text(
                                            "Checked In",
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: BlurryContainer(
                                      blur: 5,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          left: 15,
                                          right: 0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            const Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 5,
                                                ),
                                                child: Text(
                                                  "6",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(228, 201, 206, 1),
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  height: double.infinity,
                                                  child: Text(
                                                    "Not Checked In",
                                                    style: TextStyle(color: Colors.grey.shade300),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: BlurryContainer(
                                      blur: 5,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          left: 0,
                                          right: 15,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            const Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 5,
                                                ),
                                                child: Text(
                                                  "2",
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(203, 237, 236, 1),
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  height: double.infinity,
                                                  child: Text(
                                                    "On Leave",
                                                    style: TextStyle(color: Colors.grey.shade300),
                                                  ),
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
                            ),
                            const Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text(
                                        "Total Employees",
                                        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 30),
                                      child: Text(
                                        "12",
                                        style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.end,
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
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(102, 47, 45, 47),
                              ),
                              child: BlurryContainer(
                                borderRadius: BorderRadius.circular(20),
                                blur: 5,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                                        height: 25,
                                        width: 25,
                                        // decoration: const BoxDecoration(
                                        //   image: DecorationImage(image: AssetImage('assets/tree.jpg'), fit: BoxFit.fill),
                                        // ),
                                        // child: const Icon(
                                        //   Icons.holiday_village,
                                        //   color: Colors.white,
                                        //   size: 40,
                                        // ),
                                        child: const Image(
                                          image: AssetImage('assets/manager/Leave.png'),
                                          fit: BoxFit.contain,
                                          color: Color.fromRGBO(246, 203, 169, 1),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: Text(
                                          "Leave Request",
                                          style: TextStyle(color: Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(102, 47, 45, 47),
                              ),
                              margin: const EdgeInsets.only(left: 5),
                              child: BlurryContainer(
                                borderRadius: BorderRadius.circular(20),
                                blur: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                                        width: 25,
                                        height: 25,
                                        // decoration: const BoxDecoration(
                                        //   image: DecorationImage(image: AssetImage('assets/tree.jpg'), fit: BoxFit.fill),
                                        // ),
                                        child: const Image(
                                          image: AssetImage('assets/manager/clipboard-text.png'),
                                          fit: BoxFit.contain,
                                          color: Color.fromRGBO(246, 203, 169, 1),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: Text(
                                          "Work Expense Request",
                                          style: TextStyle(color: Colors.grey.shade300, fontSize: 14),
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
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(102, 47, 45, 47),
                      ),
                      child: BlurryContainer(
                        borderRadius: BorderRadius.circular(20),
                        blur: 5,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Activity",
                                      style: TextStyle(color: Colors.grey.shade300, fontSize: 19, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: const EdgeInsets.only(right: 15),
                                    child: const Image(
                                      image: AssetImage('assets/manager/arrow-circle-down.png'),
                                      fit: BoxFit.contain,
                                      color: Color.fromRGBO(246, 203, 169, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.080,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color.fromARGB(255, 21, 0, 19), border: Border.all(color: const Color.fromARGB(255, 78, 4, 71), width: 3)),
                    child: BlurryContainer(
                      borderRadius: BorderRadius.circular(50),
                      blur: 5,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 40,
                                padding: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    width: 2,
                                    color: const Color.fromRGBO(246, 203, 169, 1),
                                  ),
                                ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Kiosk(),
                                    ),
                                  );
                                },
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(0, 0, 0, 0),
                                  ),
                                  elevation: MaterialStatePropertyAll(0),
                                ),
                                child: BlurryContainer(
                                  blur: 5,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          //padding: const EdgeInsets.only(left: 5),
                                          child: Container(
                                            margin: const EdgeInsets.only(left: 5),
                                            child: const Align(
                                              alignment: Alignment.centerRight,
                                              child: Image(
                                                image: AssetImage('assets/manager/home.png'),
                                                fit: BoxFit.contain,
                                                color: Color.fromRGBO(246, 203, 169, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Kiosk",
                                            style: TextStyle(
                                              color: Color.fromRGBO(246, 203, 169, 1),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 40,
                              width: 40,
                              //margin: const EdgeInsets.only(left: 25, right: 25),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Image.asset(
                                'assets/manager/Leave.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              //margin: const EdgeInsets.only(left: 25, right: 25),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), shape: BoxShape.circle),
                              child: Image.asset(
                                'assets/manager/clipboard-text.png',
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
                                'assets/manager/wallet-money.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
