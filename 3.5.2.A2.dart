import 'functions.dart';

void triplePrint(String textInput) {
  for (int i = 0; i < 3; i++) {
    print(textInput);
  }
}

void main() {

  clearConsole();
  triplePrint('Text 1');
  lineBreak();
  triplePrint('Text 2');
  lineBreak();
  triplePrint('Text 3');
  lineBreak();
}