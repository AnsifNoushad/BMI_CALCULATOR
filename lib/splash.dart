import 'package:bmi_calculator/Homepage.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    gotohome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Image.network(
              'https://media.istockphoto.com/vectors/indikator-bmi-on-white-background-chart-concept-vector-icon-vector-id1361979562?b=1&k=20&m=1361979562&s=170667a&w=0&h=g73GlTrwlEZ3KKqpe5mUfroyj7mOFRTp09cW2P1cUu8=')
        ],
      ),
    );
  }

  Future<void> gotohome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Homepage(),
      ),
    );
  }
}
