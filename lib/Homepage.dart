import 'package:bmi_calculator/Page_2.dart';
import 'package:bmi_calculator/controller/controller.dart';
import 'package:bmi_calculator/view/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _Weight = ref.watch(bmiweight);
    var _age = ref.watch(bmiage);
    var _height = ref.watch(bmislider);
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
                          Icons.apps,
                        )),
                  ),
                  Text(
                    'BMI Calculator',
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
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 160,
                  child: Center(
                    child: Text(
                      'Male',
                      style: TextStyle(
                          color: Color.fromARGB(213, 255, 255, 255),
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
                          offset: Offset(2, 6),
                        ),
                      ],
                      color: Color.fromARGB(255, 116, 193, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  height: 50,
                  width: 160,
                  child: Center(
                    child: Text(
                      'Female',
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
                          offset: Offset(2, 6),
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )
              ],
            ),
          ),
          Row(
            children: [
              MySlider(),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          blurRadius: 3.2,
                          color: Color.fromARGB(55, 0, 0, 0),
                          offset: Offset(3, 6),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color.fromARGB(104, 0, 0, 0),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          _Weight.toString(),
                          style: TextStyle(
                            fontSize: 52,
                            color: const Color.fromARGB(143, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: IconButton(
                                    color: Color.fromARGB(136, 0, 0, 0),
                                    onPressed: () {
                                      ref.read(bmiweight.notifier).state++;
                                    },
                                    icon: Icon(
                                      Icons.add,
                                    )),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: IconButton(
                                    color: Color.fromARGB(136, 0, 0, 0),
                                    onPressed: () {
                                      ref.read(bmiweight.notifier).state--;
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          blurRadius: 3.2,
                          color: Color.fromARGB(55, 0, 0, 0),
                          offset: Offset(3, 6),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Age',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color.fromARGB(104, 0, 0, 0),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          _age.toString(),
                          style: TextStyle(
                            fontSize: 52,
                            color: const Color.fromARGB(143, 0, 0, 0),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: IconButton(
                                    color: Color.fromARGB(136, 0, 0, 0),
                                    onPressed: () {
                                      ref.read(bmiage.notifier).state++;
                                    },
                                    icon: Icon(
                                      Icons.add,
                                    )),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: IconButton(
                                    color: Color.fromARGB(136, 0, 0, 0),
                                    onPressed: () {
                                      ref.read(bmiage.notifier).state--;
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              double total = _Weight / ((_height / 100) * (_height / 100));
              String s = total.toStringAsFixed(2);
              ref.read(bmitotal.notifier).state = double.parse(s);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                  ));
            },
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  "Lets's Begin",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
