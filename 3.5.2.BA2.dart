import 'functions.dart';

// Erstelle zwei Funktionen:
void printGrades(List<int> grades) {
  // Gibt alle Noten nacheinander aus
  // z.B.: Note 1: 2, Note 2: 1, Note 3: 3
  for (int i = 0; i < grades.length; i++) {
    print('Grade ${i + 1}: ${grades[i]}');
  }
}

void calculateAndPrintAverage(List<int> grades) {
  // Berechnet den Durchschnitt und gibt aus:
  // "Der Durchschnitt ist: 2.0"
    double average = 0;
  for (int i = 0; i < grades.length; i++) {
    average += grades[i];
  }
  print('The average grade is: ${average / grades.length}');
}

// Hauptfunktion:
void analyzeGrades(List<int> grades) {
  // Ruft beide Funktionen nacheinander auf
  printGrades(grades);
  lineBreak();
  calculateAndPrintAverage(grades);
}

void main(){

  clearConsole();
  analyzeGrades([1, 5, 8]);
  lineBreak();
  
}