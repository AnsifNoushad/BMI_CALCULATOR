import 'package:bmi_calculator/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class MySlider extends ConsumerWidget {
  MySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _bmiheight = ref.watch(bmislider);
    return Container(
      height: 510,
      width: 150,
      margin: EdgeInsets.only(
        top: 20,
        left: 30,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]),
      child: SfSlider.vertical(
        activeColor: Colors.blueAccent,
        min: 100,
        max: 200,
        value: _bmiheight,
        interval: 20,
        showTicks: true,
        showLabels: true,
        enableTooltip: true,
        minorTicksPerInterval: 1,
        onChanged: (dynamic value) {
          ref.read(bmislider.notifier).state = value;
        },
      ),
    );
  }
}
