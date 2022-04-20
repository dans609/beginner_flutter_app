import 'dart:math';

class Utils {
  static double degreesToRad(double degree) => degree * pi / 180;
  static double dubl(int value) => value.toDouble();
  static double sub(int a, int b) => dubl(a - b);
  static double multiply(int a, int b) => dubl(a * b);
  static double addition(int a, int b) => dubl(a + b);
  static double div(int a, int b) => a / b;

  static getYear(String? date) => date?.lastChars(4);
  static bool listMatcher(List<String> data, String? criteria) {
    return criteria == null
      ? false
      : data.any((d) => d.containsAndLower(criteria));
  }
}

extension Cap on String {
  String inCaps() => length > 0
    ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}'
    : '';

  String capitalize() => replaceAll(RegExp(' +'), ' ')
    .split(' ')
    .map((str) => str.inCaps())
    .join(' ');

  String lastChars(int n) => substring(length - n);
  bool containsAndLower(String text) => toLowerCase().contains(text.toLowerCase());
}
