  import 'dart:io';
  import 'dart:math';

  void main() {
    while (true) {
      try {
        print('\nВведите первое число:');
        String firstInput = stdin.readLineSync() ?? '';
        
        if (firstInput.toLowerCase() == 'выход') {
          print('Конец');
          break;
        }
        
        print('Введите второе число:');
        String secondInput = stdin.readLineSync() ?? '';
        double secondNumber = double.parse(secondInput);
        double firstNumber = double.parse(firstInput);
        
        print('Выберите операцию (+, -, *, /, ~/, %, ^, ==, !=, >, <, >=, <=):');
        String operation = stdin.readLineSync() ?? '';
        
        switch (operation) {
          case '+':
            print('Вычисление: $firstNumber + $secondNumber = ${firstNumber + secondNumber}');
            break;
            
          case '-':
            print('Вычисление: $firstNumber - $secondNumber = ${firstNumber - secondNumber}');
            break;
            
          case '*':
            print('Вычисление: $firstNumber * $secondNumber = ${firstNumber * secondNumber}');
            break;
            
          case '/':
            if (secondNumber == 0) {
              print('На ноль делить нельзя, зачем ты так делаешь');
            } else {
              print('Вычисление: $firstNumber / $secondNumber = ${firstNumber / secondNumber}');
            }
            break;
            
          case '~/':
            if (secondNumber == 0) {
              print('На ноль делить нельзя, зачем ты так делаешь');
            } else {
              int result = firstNumber ~/ secondNumber;
              print('Вычисление: $firstNumber ~/ $secondNumber = $result');
            }
            break;
            
          case '%':
            if (secondNumber == 0) {
              print('На ноль делить нельзя, зачем ты так делаешь');
            } else {
              print('Вычисление: $firstNumber % $secondNumber = ${firstNumber % secondNumber}');
            }
            break;
            
          case '^':
            print('Вычисление: $firstNumber ^ $secondNumber = ${pow(firstNumber, secondNumber)}');
            break;
            
          case '==':
            bool result = firstNumber == secondNumber;
            print('Сравнение: $firstNumber == $secondNumber = $result');
            break;
            
          case '!=':
            bool result = firstNumber != secondNumber;
            print('Сравнение: $firstNumber != $secondNumber = $result');
            break;
            
          case '>':
            bool result = firstNumber > secondNumber;
            print('Сравнение: $firstNumber > $secondNumber = $result');
            break;
            
          case '<':
            bool result = firstNumber < secondNumber;
            print('Сравнение: $firstNumber < $secondNumber = $result');
            break;
            
          case '>=':
            bool result = firstNumber >= secondNumber;
            print('Сравнение: $firstNumber >= $secondNumber = $result');
            break;
            
          case '<=':
            bool result = firstNumber <= secondNumber;
            print('Сравнение: $firstNumber <= $secondNumber = $result');
            break;
            
          default:
            print('Неправильная операция: "$operation"');
            print('Доступные операции: +, -, *, /, ~/, %, ^, ==, !=, >, <, >=, <=');
        }
      } catch (e) {
        print('Что ты ввёл? У тя не правильно введены либо цифры либо операция');
      }
      
      print('─' * 40);
    }
  }