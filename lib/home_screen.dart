import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;
  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //نقطة البداية
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 8, 96),
        centerTitle: true,
        title: Text("استغفر الله و أتوب إليه",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Color.fromARGB(255, 22, 5, 91),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height:
                      MediaQuery.of(context).size.height / 1.50, //مقاس الشاشات
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 7, 6, 95),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            color: Colors.white.withOpacity(.5),
                            spreadRadius: 8,
                            blurRadius: 20)
                      ]),

                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(0, -0),
                  child: Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 9, 2, 76),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              color: Colors.black,
                              spreadRadius: 5,
                              blurRadius: 5),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => Counter(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 2, 18, 99),
                              shape: BoxShape.circle,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(
                                Icons.wifi_protected_setup,
                                size: 30,
                              ),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.red, elevation: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
