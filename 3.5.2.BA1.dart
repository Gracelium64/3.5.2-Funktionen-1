import 'functions.dart';

void convertMinutesToTime(int minutes) {
  int x = minutes ~/ 60;
  int y = minutes % 60;
  print('$minutes -> $x Hours, $y Minutes');
}

void main() {

  clearConsole();
  convertMinutesToTime(185);
  convertMinutesToTime(366);
  convertMinutesToTime(125);
  
}