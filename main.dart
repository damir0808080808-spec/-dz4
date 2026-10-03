import 'dart:io';
// Функция без параметров и без return 
void showWelcome() { 
  print('================================'); 
print('        МИНИ-КАЛЬКУЛЯТОР'); 
print('================================'); 
print('Добро пожаловать!'); }
// Функция с параметрами и без return 
void showResult(String operation, int result) { 
  print('$operation: $result'); }
// Функция с параметрами и с return 
int add(int a, int b) { 
  return a + b; 
  }
// Функция с параметрами и с return 
int subtract(int a, int b) { 
  return a - b; 
  }
// Функция с параметрами и с return 
int multiply(int a, int b) { 
  return a * b; 
  }
// Функция с параметрами и с return 
int divide(int a, int b) { 
  return a ~/ b; 
  }
// Функция без параметров и с return 
int getDefaultNumber() { 
  return 10; 
  }
void main() { 
  // Вызываем приветствие 
showWelcome();
// Получаем первое число 
print('Введите первое число:'); 
int firstNumber = int.parse(stdin.readLineSync()!);
// Получаем второе число 
print('Введите второе число:'); 
int secondNumber = int.parse(stdin.readLineSync()!);
// Выполняем операции 
int addition = add(firstNumber, secondNumber); 
int subtraction = subtract(firstNumber, secondNumber); 
int multiplication = multiply(firstNumber, secondNumber);
// Проверяем деление на ноль 
if (secondNumber != 0) { int division = divide(firstNumber, secondNumber);
// Выводим результаты
print('================================');
print('           РЕЗУЛЬТАТЫ');
print('================================');

showResult('Сложение', addition);
showResult('Вычитание', subtraction);
showResult('Умножение', multiplication);
showResult('Деление', division);
} else { 
  print('================================'); 
  print('           РЕЗУЛЬТАТЫ'); 
  print('================================');
showResult('Сложение', addition);
showResult('Вычитание', subtraction);
showResult('Умножение', multiplication);
print('Деление: на ноль делить нельзя');
}
// Получаем число по умолчанию 
int defaultNumber = getDefaultNumber(); 
print('Значение по умолчанию: $defaultNumber'); }