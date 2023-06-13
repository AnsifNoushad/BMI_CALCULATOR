import 'package:bmi_calculator/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Page2 extends ConsumerWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _bmitotal = ref.watch(bmitotal);
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 3.2,
                            color: Color.fromARGB(55, 0, 0, 0),
                            offset: Offset(2, 3),
                          ),
                        ],
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: IconButton(
                        color: Color.fromARGB(136, 0, 0, 0),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.navigate_before,
                        )),
                  ),
                  Text(
                    'BMI Results',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(142, 0, 0, 0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 3.2,
                            color: Color.fromARGB(55, 0, 0, 0),
                            offset: Offset(2, 3),
                          ),
                        ],
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: IconButton(
                        color: Color.fromARGB(136, 0, 0, 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_2_outlined,
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 140,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(91, 38, 235, 238),
                      offset: Offset(9, 6),
                      blurRadius: 20,
                      spreadRadius: 1),
                ]),
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 2000,
              center: Text(
                _bmitotal.toString(),
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              radius: 80.2,
              lineWidth: 15.0,
              backgroundWidth: -2,
              percent: total(_bmitotal / 40),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: _bmitotal > 25
                  ? Colors.red
                  : _bmitotal > 18.5
                      ? Color.fromARGB(255, 17, 215, 254)
                      : Colors.green,
              backgroundColor: Color.fromARGB(255, 226, 226, 226),
              // percent: bmi(_bmi / 40),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          RichText(
            text: TextSpan(
              text: 'You have',
              style: TextStyle(fontSize: 16, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: _bmitotal > 25
                        ? ' OVER WEIGHT'
                        : _bmitotal > 18.5
                            ? ' NORMAL'
                            : ' UNDER WEIGHT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _bmitotal > 25
                          ? Colors.red
                          : _bmitotal > 18.5
                              ? Color.fromARGB(255, 17, 215, 254)
                              : Colors.green,
                    )),
                TextSpan(text: ' body weight!'),
              ],
            ),
          ),
          SizedBox(
            height: 190,
          ),
          Container(
            height: 50,
            width: 160,
            child: Center(
              child: Text(
                'Details',
                style: TextStyle(
                    color: Color.fromARGB(104, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 3.2,
                    color: Color.fromARGB(55, 0, 0, 0),
                    offset: Offset(3, 6),
                  ),
                ],
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )
        ],
      ),
    );
  }
}

double total(double value) {
  if (value <= 1) {
    return value;
  } else {
    return 1;
  }
}
