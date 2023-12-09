import 'package:flutter/material.dart';
//1/Calcul récursif de Fibonacci
int fibonacciRecursive(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
  }
}
//1/Calcul itératif de Fibonacci
int fibonacciIterative(int n) {
  if (n <= 1) {
    return n;
  } else {
    int fib = 0;
    int prev1 = 1;
    int prev2 = 0;
    for (int i = 2; i <= n; i++) {
      fib = prev1 + prev2;
      prev2 = prev1;
      prev1 = fib;
    }
    return fib;
  }
}
//2/
void main() {
  //tester iterativ
  int n = 10;

  int result = fibonacciIterative(n);
  print("Fibonacci($n) = $result");
//tester Recursive
  int res = fibonacciRecursive(n);
  print("Fibonacci($n) = $result");
}

