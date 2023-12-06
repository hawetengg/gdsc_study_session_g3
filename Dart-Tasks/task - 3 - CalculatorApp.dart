import 'dart:async';
import 'dart:io';

class DivisionByZeroException implements Exception {
  String toString() => "DivisionByZeroException: Cannot divide by zero";
}

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw DivisionByZeroException();
    }
    return a / b;
  }
}

void main() {
  try {
    final calculator = Calculator();

    print("Enter first number: ");
    final double num1 = double.parse(stdin.readLineSync()!);

    print("Enter the second number: ");
    final double num2 = double.parse(stdin.readLineSync()!);
    final resultAdd = calculator.add(num1, num2);
    final resultSubtract = calculator.subtract(num1, num2);
    final resultMultiply = calculator.multiply(num1, num2);
    final resultDivide = calculator.divide(num1, num2);

    print("Calculating results...");
    Future.delayed(const Duration(seconds: 5), () {
      print("Addition Result: $resultAdd");
      print("Subtraction Result: $resultSubtract");
      print("Multiplication Result: $resultMultiply");
      print("Division Result: $resultDivide");
    });
  } catch (e) {
    print("Errot: $e");
  }
}
