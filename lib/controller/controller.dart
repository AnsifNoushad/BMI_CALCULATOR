import 'package:flutter_riverpod/flutter_riverpod.dart';

final bmiweight = StateProvider<int>((ref) {
  return 50;
});

final bmiage = StateProvider<int>((ref) {
  return 20;
});

final bmislider = StateProvider<double>((ref) {
  return 100;
});


final bmitotal = StateProvider<double>((ref) {
  return 0;
});
