import 'functions.dart';

void reverseInitials(String firstName, String lastName) {
  print('${(firstName.toUpperCase().substring(firstName.length - 1))}. ${lastName.toUpperCase().substring(lastName.length - 1)}.');
}

void main(){

  clearConsole();
  reverseInitials('Grace', 'Shadmi');
  reverseInitials('Benjamin', 'Sisko');
  reverseInitials('Beckett', 'Mariner');

}